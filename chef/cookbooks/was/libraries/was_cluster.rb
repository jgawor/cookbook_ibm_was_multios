# Cookbook Name:: was
# Library:: was_cluster
#
# Copyright IBM Corp. 2016, 2017
#

# <> library: WAS cluster
# <> Library Functions for the WAS Cookbook
module WASCluster
  # Helper functions for WAS cookbook
  include Chef::Mixin::ShellOut

  def create_jython_template(temp_dir, cluster_name, jython, rep_domain, cell_name)
    template "#{temp_dir}/#{jython}" do
      cookbook 'was'
      source "#{jython}.erb"
      mode "755"
      variables(:TMP => temp_dir,
                :CLUSTER_NAME => cluster_name,
                :CELL_NAME => cell_name,
                :REP_DOMAIN => rep_domain)
      action :create
    end
  end

  def create_cluster(profile_path, admin_user, admin_pwd, os_user, cell_name, cluster_name, create_replication_domain)
    unless admin_user.nil?
      raise 'Option admin_pwd must be specified in conjunction with option admin_user' if admin_pwd.nil?
    end

    #specific input validation
    raise 'Option cluster_name must be specified for action :create' if cluster_name.nil?
    raise 'Option cell_name must be specified for action :create' if cell_name.nil?

    rep_domain = if create_replication_domain
      "True"
                 else
      "False"
                 end

    temp_dir= node['ibm']['temp_dir'].to_s

    #create wsadmin libraries
    create_wsadmin_library(temp_dir)
    jython = "cluster_create.jython"

    #create jython template
    create_jython_template(temp_dir, cluster_name, jython, rep_domain, cell_name)

    #run jython
    run_jython_block(os_user, profile_path, admin_user, admin_pwd, jython)
  end

  def create_server_in_cluster(profile_path, admin_user, admin_pwd, os_user, node_name, server_name, cluster_name, session_replication)
    unless admin_user.nil?
      raise 'Option admin_pwd must be specified in conjunction with option admin_user' if admin_pwd.nil?
    end

    #specific input validation
    raise 'Option cluster_name must be specified for action :create' if cluster_name.nil?
    raise 'Option node_name must be specified for action :create' if node_name.nil?
    raise 'Option server_name must be specified for action :create' if server_name.nil?

    session_rep = if session_replication
      "True"
                  else
      "False"
                  end

    temp_dir= node['ibm']['temp_dir'].to_s

    #create wsadmin libraries
    create_wsadmin_library(temp_dir)

    jython = "appserver_in_cluster_create.jython"

    #create jython template
    create_jython_template_clustermember(temp_dir, cluster_name, jython, session_rep, node_name, server_name)

    #run jython
    run_jython_block(os_user, profile_path, admin_user, admin_pwd, jython)
  end

  def create_jython_template_clustermember(temp_dir, cluster_name, jython, session_rep, node_name, server_name)
    template "#{temp_dir}/#{jython}" do
      cookbook 'was'
      source "#{jython}.erb"
      mode "755"
      variables(:TMP => temp_dir,
                :NODE_NAME => node_name,
                :SERVER_NAME => server_name,
                :CLUSTER_NAME => cluster_name,
                :SESSION_REP => session_rep)
      action :create
    end
  end


  def start_cluster
    #TODO
  end
end

Chef::Recipe.send(:include, WASCluster)
Chef::Resource.send(:include, WASCluster)
