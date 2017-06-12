# Cookbook Name::was
# Recipe::create_clustermember
#
#         Copyright IBM Corp. 2016, 2017
#
# <> Create Websphere cluster members/servers
#

admin_user_pwd = node['was']['security']['admin_user_pwd']
chef_vault = node['was']['vault']['name']
unless chef_vault.empty?
  encrypted_id = node['was']['vault']['encrypted_id']
  require 'chef-vault'
  admin_user_pwd = ChefVault::Item.load(chef_vault, encrypted_id)['was']['security']['admin_user_pwd']
end

profile_path = "#{node['was']['profile_dir']}/#{node['was']['profiles']['node_profile']['profile']}"

node['was']['wsadmin']['clusters'].each_pair do |_k, u|
  cluster_name = u['cluster_name']
  session_rep =  u['session_rep']
  u['cluster_servers'].each_pair do |_j, i|
    create_server_in_cluster(profile_path, node['was']['security']['admin_user'], admin_user_pwd, node['was']['os_users']['was']['name'], was_tags(node['was']['profiles']['node_profile']['node'].to_s), i['server_name'], cluster_name, session_rep)
  end
end
