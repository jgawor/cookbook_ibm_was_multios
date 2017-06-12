# Cookbook Name::was
# Recipe::create_cluster
#
#         Copyright IBM Corp. 2016, 2017
#
# <> Create Websphere clusters
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
  create_cluster(profile_path, node['was']['security']['admin_user'], admin_user_pwd, node['was']['os_users']['was']['name'], node['was']['profiles']['dmgr']['cell'], u['cluster_name'], u['session_rep'])
end
