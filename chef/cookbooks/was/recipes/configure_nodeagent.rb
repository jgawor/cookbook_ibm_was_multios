# Cookbook Name::was
# Recipe::configure_nodeagent
#
#         Copyright IBM Corp. 2016, 2017
#
# <> Configure Node agent like set the JVM HeapSize min / max etc
#

admin_user = node['was']['security']['admin_user']
os_user = node['was']['os_users']['was']['name']
property_name_initial = "initialHeapSize"
property_name_maximum = "maximumHeapSize"

admin_user_pwd = node['was']['security']['admin_user_pwd']
chef_vault = node['was']['vault']['name']
unless chef_vault.empty?
  encrypted_id = node['was']['vault']['encrypted_id']
  require 'chef-vault'
  admin_user_pwd = ChefVault::Item.load(chef_vault, encrypted_id)['was']['security']['admin_user_pwd']
end

profile_path = node['was']['wsadmin']['nodeagent']['jvmproperty']['profile_path']
property_value_initial = node['was']['wsadmin']['nodeagent']['jvmproperty']['property_value_initial']
property_value_maximum = node['was']['wsadmin']['nodeagent']['jvmproperty']['property_value_maximum']
node_name = was_tags(node['was']['wsadmin']['nodeagent']['jvmproperty']['node_name'])
server_name = node['was']['wsadmin']['nodeagent']['jvmproperty']['server_name']

# Set the initial heap size
set_heap_size(profile_path, admin_user, admin_user_pwd, os_user, property_name_initial, property_value_initial, property_name_maximum, property_value_maximum, node_name, server_name)
