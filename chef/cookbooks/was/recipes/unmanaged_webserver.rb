# Cookbook Name::was
# Recipe::unmanaged_webserver
#
#         Copyright IBM Corp. 2016, 2017
#
# <> Create unmanaged node, create and configure webserver


admin_user_pwd = node['was']['security']['admin_user_pwd']
ihs_admin_password = node['was']['webserver']['ihs_server']['ihs_admin_password']
chef_vault = node['was']['vault']['name']
unless chef_vault.empty?
  encrypted_id = node['was']['vault']['encrypted_id']
  require 'chef-vault'
  admin_user_pwd = ChefVault::Item.load(chef_vault, encrypted_id)['was']['security']['admin_user_pwd']
  ihs_admin_password = ChefVault::Item.load(chef_vault, encrypted_id)['ihs']['admin_server']['password'].to_s
end

profile_path = "#{node['was']['profile_dir']}/#{node['was']['profiles']['dmgr']['profile']}"

node['was']['unmanaged_node'].each_pair do |_k, u|
  unmanaged_hostname = u['host_name']
  Chef::Log.info("unmanaged hostname-IHS: #{unmanaged_hostname}")
  if unmanaged_hostname == '' || unmanaged_hostname.empty? || unmanaged_hostname.nil?
    unmanaged_hostname = chef_searchihshostname(node['was']['ihs_role_names'])
    Chef::Log.info("#{unmanaged_hostname} unmanaged hostname-IHS derived from chefsearch in stack")
  end
  create_unmanaged_node(profile_path, node['was']['security']['admin_user'], admin_user_pwd, node['was']['os_users']['was']['name'], was_tags(node['was']['unmanaged_node']['unmngNode01']['node_name']), unmanaged_hostname, u['os'])
end


node['was']['webserver'].each_pair do |_k, u|
  create_webserver(profile_path, node['was']['security']['admin_user'], admin_user_pwd, node['was']['os_users']['was']['name'], was_tags(u['node_name']), u['webserver_name'], u['webserver_port'], u['install_dir'], u['plugin_dir'], u['admin_port'], u['ihs_admin_user'], ihs_admin_password, u['webserver_type'], u['webapp_mapping'])
end
