# Cookbook Name:: was
# Library:: was_jvmproperty
#
# Copyright IBM Corp. 2016, 2017
#

# <> library: WAS jvmproperty
# <> Library Functions for the WAS Cookbook
module WASJvmproperty
  # Helper functions for WAS cookbook
  include Chef::Mixin::ShellOut

  def create_jython_template_heapsize(temp_dir, jython, property_name, property_value, node_name, server_name)
    template "#{temp_dir}/#{jython}" do
      cookbook 'was'
      source "#{jython}.erb"
      mode "755"
      variables(:TMP => temp_dir,
                :PROPNAME => property_name,
                :PROPVALUE => property_value,
                :NODENAME => node_name,
                :SERVERNAME => server_name)
      action :create
    end
  end

  def set_heap_size(profile_path, admin_user, admin_pwd, os_user, property_name_initial, property_value_initial, property_name_maximum, property_value_maximum, node_name, server_name)
    unless admin_user.nil?
      raise 'Option admin_pwd must be specified in conjunction with option admin_user' if admin_pwd.nil?
    end

    #specific input validation
    #raise 'Option property_name must be specified for action :create' if property_name.nil?
    #raise 'Option property_value must be specified for action :create' if property_value.nil?


    temp_dir= node['ibm']['temp_dir'].to_s

    #create wsadmin libraries
    create_wsadmin_library(temp_dir)
    jython = "jvmproperty_set.jython"

    #create jython template to set initial heap size
    create_jython_template_heapsize(temp_dir, jython, property_name_initial, property_value_initial, node_name, server_name)

    #run jython to set initial heap size
    run_jython_block(os_user, profile_path, admin_user, admin_pwd, jython)

    #create jython template to set maximum heap size
    create_jython_template_heapsize(temp_dir, jython, property_name_maximum, property_value_maximum, node_name, server_name)

    #run jython to set maximum heap size
    run_jython_block(os_user, profile_path, admin_user, admin_pwd, jython)
  end

  def set_heap_size_standalone(profile_path, admin_user, admin_pwd, os_user, property_name_initial, property_value_initial, property_name_maximum, property_value_maximum, node_name, server_name)
    unless admin_user.nil?
      raise 'Option admin_pwd must be specified in conjunction with option admin_user' if admin_pwd.nil?
    end

    #specific input validation
    #raise 'Option property_name must be specified for action :create' if property_name.nil?
    #raise 'Option property_value must be specified for action :create' if property_value.nil?


    temp_dir= node['ibm']['temp_dir'].to_s

    #create wsadmin libraries
    create_wsadmin_library(temp_dir)
    jython = "jvmproperty_set.jython"

    #create jython template to set initial heap size
    create_jython_template_heapsize(temp_dir, jython, property_name_initial, property_value_initial, node_name, server_name)

    #run jython to set initial heap size
    run_jython_block_standalone(os_user, profile_path, admin_user, admin_pwd, jython)

    #create jython template to set maximum heap size
    create_jython_template_heapsize(temp_dir, jython, property_name_maximum, property_value_maximum, node_name, server_name)

    #run jython to set maximum heap size
    run_jython_block_standalone(os_user, profile_path, admin_user, admin_pwd, jython)
  end
end

Chef::Recipe.send(:include, WASJvmproperty)
Chef::Resource.send(:include, WASJvmproperty)
