# Cookbook Name:: was
# Library:: was_webserver
#
# Copyright IBM Corp. 2016, 2017
#
# <> library: WAS webserver
# <> Library Functions for the WAS Cookbook
module WASWebserver
  # Helper functions for WAS cookbook
  include Chef::Mixin::ShellOut

  def create_jython_template_unmanaged_node(temp_dir, jython, node_name, host_name, os)
    template "#{temp_dir}/#{jython}" do
      cookbook 'was'
      source "#{jython}.erb"
      mode "755"
      variables(:TMP => temp_dir,
                :NODE_NAME => node_name,
                :HOST_NAME => host_name,
                :OS => os)
      action :create
    end
  end

  def create_unmanaged_node(profile_path, admin_user, admin_pwd, os_user, node_name, host_name, os)
    unless admin_user.nil?
      raise 'Option admin_pwd must be specified in conjunction with option admin_user' if admin_pwd.nil?
    end
    raise 'The path specified for option profile_path does not exist' unless ::File.exist?(profile_path)
    #specific input validation
    raise 'Option cluster_name must be specified for action :create' if node_name.nil?
    raise 'Option cell_name must be specified for action :create' if host_name.nil?

    temp_dir= node['ibm']['temp_dir'].to_s

    #create wsadmin libraries
    create_wsadmin_library(temp_dir)
    jython = "unmanaged_node.jython"

    #create jython template
    create_jython_template_unmanaged_node(temp_dir, jython, node_name, host_name, os)

    #run jython
    run_jython_block(os_user, profile_path, admin_user, admin_pwd, jython)
  end

  def create_webserver(profile_path, admin_user, admin_pwd, os_user, node_name, webserver_name, webserver_port, install_dir, plugin_dir, admin_port, ihs_admin_user, ihs_admin_password, webserver_type, webapp_mapping)
    unless admin_user.nil?
      raise 'Option admin_pwd must be specified in conjunction with option admin_user' if admin_pwd.nil?
    end
    raise 'The path specified for option profile_path does not exist' unless ::File.exist?(profile_path)
    #specific input validation
    raise 'Option cluster_name must be specified for action :create' if ihs_admin_user.nil?
    raise 'Option node_name must be specified for action :create' if node_name.nil?
    raise 'Option server_name must be specified for action :create' if webserver_name.nil?

    temp_dir= node['ibm']['temp_dir'].to_s
    jython = "webserver.jython"

    #create wsadmin libraries
    create_wsadmin_library(temp_dir)

    #create jython template
    create_jython_template_webserver(node_name, webserver_name, webserver_port, install_dir, plugin_dir, admin_port, ihs_admin_user, ihs_admin_password, webserver_type, webapp_mapping)

    #run jython
    run_jython_block(os_user, profile_path, admin_user, admin_pwd, jython)
  end

  def create_jython_template_webserver(node_name, webserver_name, webserver_port, install_dir, plugin_dir, admin_port, ihs_admin_user, ihs_admin_password, webserver_type, webapp_mapping)
    temp_dir= node['ibm']['temp_dir'].to_s
    jython = "webserver.jython"
    template "#{temp_dir}/#{jython}" do
      cookbook 'was'
      source "#{jython}.erb"
      mode "755"
      variables(:TMP => temp_dir,
                :NODE_NAME => node_name,
                :WEBSERVER_NAME => webserver_name,
                :WEBSERVER_PORT => webserver_port,
                :WEBSERVER_INSTALLDIR => install_dir,
                :PLUGIN_INSTALLDIR => plugin_dir,
                :ADMINSERVER_PORT => admin_port,
                :ADMINSERVER_USER => ihs_admin_user,
                :ADMINSERVER_PASSWORD => ihs_admin_password,
                :WEBSERVER_TYPE => webserver_type,
                :WEBAPP_MAPPING => webapp_mapping)
      action :create
    end
  end


  def start_cluster
    #TODO
  end
end

Chef::Recipe.send(:include, WASWebserver)
Chef::Resource.send(:include, WASWebserver)
