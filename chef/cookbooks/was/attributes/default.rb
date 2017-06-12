# Cookbook Name::was
# Recipe::attributes
#
#         Copyright IBM Corp. 2016, 2017
#
# <> The attributes file will define all attributes that may be over-written by CHEF Attribute Precendence
#

######################################################################################################
# INSTALLATION Options
######################################################################################################

#<> WebSphere Installation Version. options to user would be "8.5.5.9" or "9.0.0.2"
#default['was']['version'] = "8.5.5.9"
# <md>attribute 'was/version',
# <md>          :displayname =>  'WAS_Version',
# <md>          :description => 'WAS_Version',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9.0.0.2',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['was']['version'] = "9.0.0.2" # ~ip_checker

#<> Rolenames required for chef-search
# <md>attribute 'was/dmgr_role_name',
# <md>          :displayname =>  'dmgr_role_name',
# <md>          :description => 'dmgr_role_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['was']['dmgr_role_name'] = "was_create_dmgr"

# <md>attribute 'was/ihs_role_names',
# <md>          :displayname =>  'ihs_role_names',
# <md>          :description => 'ihs_role_names',
# <md>          :type => 'array',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['was']['ihs_role_names'] = ["ihs-wasmode-admin", "ihs-wasmode-nonadmin"]

#<> WAS edition to install and configure
#<> NOTE: only one value can be set to true
#<> Rolenames required for chef-search
# <md>attribute 'was/edition/base',
# <md>          :displayname =>  'WebSphere base edition',
# <md>          :description => 'WebSphere base edition',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

#<> Rolenames required for chef-search
# <md>attribute 'was/edition/nd',
# <md>          :displayname =>  'WebSphere nd edition',
# <md>          :description => 'WebSphere nd edition',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['was']['edition'] = {
  'base'  => "false",
  'nd'    => "true"
}

#<> WebSphere Installation Options
#<> NOTE: only com.ibm.sdk.6_32bit OR com.ibm.sdk.6_64bit should be set to true

# <md>attribute 'was/java_version',
# <md>          :displayname =>  'WebSphere nd java_version',
# <md>          :description => 'WebSphere nd java_version',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '8.0.4.10',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/java_features/websphere_java_v8/enable',
# <md>          :displayname =>  'WebSphere java_features websphere_java_v8 enable',
# <md>          :description => 'WebSphere java_features websphere_java_v8 enable',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/java_features/websphere_java_v8/offering_id',
# <md>          :displayname =>  'WebSphere java_features websphere_java_v8 offering_id',
# <md>          :description => 'WebSphere java_features websphere_java_v8 offering_id',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'com.ibm.java.jdk.v8',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/features/core.feature',
# <md>          :displayname =>  'WebSphere features core.feature',
# <md>          :description => 'WebSphere features core.feature',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/features/ejbdeploy',
# <md>          :displayname =>  'WebSphere features ejbdeploy',
# <md>          :description => 'WebSphere features ejbdeploy',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/features/thinclient',
# <md>          :displayname =>  'WebSphere features thinclient',
# <md>          :description => 'WebSphere features thinclient',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/features/embeddablecontainer',
# <md>          :displayname =>  'WebSphere features embeddablecontainer',
# <md>          :description => 'WebSphere features embeddablecontainer',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/features/samples',
# <md>          :displayname =>  'WebSphere features samples',
# <md>          :description => 'WebSphere features samples',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/features/liberty',
# <md>          :displayname =>  'WebSphere features liberty',
# <md>          :description => 'WebSphere features liberty',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

case node['was']['version']
when /^8.5.5/ # ~ip_checker
  #<> IBM Java 7 Version valid_options 7.0.9.30, 7.1.3.30
  default['was']['java_version'] = "7.1.3.30" # ~ip_checker

  #<> WebSphere Installation Options
  default['was']['java_features'] = {
    'websphere_java_v70'  => { 'enable' => "false",
                               'offering_id' => "com.ibm.websphere.IBMJAVA.v70" },
    'websphere_java_v71'  => { 'enable' => "true",
                               'offering_id' => "com.ibm.websphere.IBMJAVA.v71" }
  }

  default['was']['features'] = {
    'core.feature'        => "true",
    'ejbdeploy'           => "true",
    'thinclient'          => "true",
    'embeddablecontainer' => "true",
    'samples'             => "false",
    'liberty'             => "false",
    'com.ibm.sdk.6_32bit' => "false",
    'com.ibm.sdk.6_64bit' => "true"
  }
when /^9.0.0.2/ # ~ip_checker

  default['was']['java_version'] = "8.0.4.10" # ~ip_checker

  #<> WebSphere Installation Options
  default['was']['java_features'] = {
    'websphere_java_v8'  => { 'enable' => "true",
                              'offering_id' => "com.ibm.java.jdk.v8" }
  }

  default['was']['features'] = {
    'core.feature'        => "true",
    'ejbdeploy'           => "true",
    'thinclient'          => "true",
    'embeddablecontainer' => "true",
    'samples'             => "false",
    'liberty'             => "false"
  }
end


############################################################################################################
# INSTALLATION Settings
############################################################################################################

#<> WAS installation directory
# <md>attribute 'was/install_dir',
# <md>          :displayname =>  'WebSphere install_dir',
# <md>          :description => 'WebSphere install_dir',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/opt/IBM/WebSphere/AppServer',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['was']['install_dir'] = "/opt/IBM/WebSphere/AppServer"

#<> WAS profile directory
# <md>attribute 'was/profile_dir',
# <md>          :displayname =>  'WebSphere profile_dir',
# <md>          :description => 'WebSphere profile_dir',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/opt/IBM/WebSphere/AppServer/profiles',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['was']['profile_dir'] = "#{node['was']['install_dir']}/profiles"

#<> Permissions to be set for directories
# <md>attribute 'was/os_perms',
# <md>          :displayname =>  'WebSphere os_perms',
# <md>          :description => 'WebSphere os_perms',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '750',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['was']['os_perms'] = "750"


############################################################################################################
# OS Users
############################################################################################################

#<> WebSphere Operating System Users To Create
# <md>attribute 'was/os_users/was/name',
# <md>          :displayname =>  'was os_users name',
# <md>          :description => 'was os_users name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'wasadmin',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/os_users/was/gid',
# <md>          :displayname =>  'was os_users gid',
# <md>          :description => 'was os_users gid',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'wasgrp',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/os_users/was/comment',
# <md>          :displayname =>  'was os_users comment',
# <md>          :description => 'was os_users comment',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'WAS administrative user',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/os_users/was/home',
# <md>          :displayname =>  'was os_users home',
# <md>          :description => 'was os_users home',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/home/wasadmin',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/os_users/was/shell',
# <md>          :displayname =>  'was os_users shell',
# <md>          :description => 'was os_users shell',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/bin/bash',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/os_users/was/ldap_user',
# <md>          :displayname =>  'was ldap_user',
# <md>          :description => 'was ldap_user',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'false',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['was']['os_users'] = {
  'was'  =>  {
    'name' =>     'wasadmin',
    'gid' =>      'wasgrp',
    'comment' =>  'WAS administrative user',
    'home' =>     "/home/wasadmin",
    'shell' =>    '/bin/bash',
    'ldap_user' => 'false'
  }
}

############################################################################################################
# WebSphere Console Security
############################################################################################################

#<> WAS admininstrative user
# <md>attribute 'was/security/admin_user',
# <md>          :displayname =>  'was admin user',
# <md>          :description => 'was administrative user',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'wasadmin',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['was']['security']['admin_user'] = "wasadmin"

# <md>attribute 'was/security/admin_user_pwd',
# <md>          :displayname =>  'was admin password',
# <md>          :description => 'was administrative password',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'true'
default['was']['security']['admin_user_pwd'] = ""



############################################################################################################
# General Profile Settings
############################################################################################################

#<> Profile Configuration Settings
#<> os_service: if true, OS service will be configured
#<> soap_client_props:if true, soap.client.properties file will be setup
#<> use_ports_file:if true, ports file will be used for profiles
#<> enable_admin_security:if true, admin security will be enabled for profiles
#<> use_default_certs:if true, default certificates will be used for profiles. If false, certificate info below will be used.

# <md>attribute 'was/config/os_service',
# <md>          :displayname =>  'was os_service',
# <md>          :description => 'was os_service',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/config/enable_admin_security',
# <md>          :displayname =>  'was enable_admin_security',
# <md>          :description => 'was enable_admin_security',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/config/use_default_certs',
# <md>          :displayname =>  'was use_default_certs',
# <md>          :description => 'was use_default_certs',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['was']['config'] = {
  'os_service' => "true",
  'enable_admin_security' => "true",
  'use_default_certs' => "true"
}

# <> Hostnames can be entred if bringing from outside of stack
# <md>attribute 'was/dmgr_host_name',
# <md>          :displayname =>  'was dmgr_host_name',
# <md>          :description => 'was dmgr_host_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['was']['dmgr_host_name'] = ''

# <md>attribute 'was/ihs_host_name',
# <md>          :displayname =>  'was ihs_host_name',
# <md>          :description => 'was ihs_host_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'
default['was']['ihs_host_name'] = ''
############################################################################################################
# Deployment Manage Profile
############################################################################################################

#<> Profile settings - Deployment Manager
#<> NOTE: personalcertdn - needs to contain "\\\\" before ","
#<>   profile: Name of the profile
#<>   cell: Name of the cell
#<>   node: Node name for the DMGR, supports TAGS
#<>   host: Host name of the DMGR, supports TAGS
#<>   ports: Default port file to use, default is dmgr.ports
#<>   personalcertdn: Personal certificate for the DMGR
#<>   personalcertvalidityperiod: validity period for the DMGR Certificate
#<>   signingcertdn: dn of the signing certificate
#<>   signingcertvalidityperiod: Validity period of the signing certificate
#<>   keystorepassword: Password of the keystore, use 'databag' if the password is to reside in a databag

# Singulaar Instance per Deployment

# <md>attribute 'was/profiles/dmgr/profile',
# <md>          :displayname =>  'was dmgr profiles profile',
# <md>          :description => 'was dmgr profiles profile',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'Dmgr01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/cell',
# <md>          :displayname =>  'was dmgr profiles cell',
# <md>          :description => 'was dmgr profiles cell',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'cell01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/node',
# <md>          :displayname =>  'was dmgr profiles node',
# <md>          :description => 'was dmgr profiles node',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '{SHORTHOSTNAME}CellManager01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/host',
# <md>          :displayname =>  'was dmgr profiles host',
# <md>          :description => 'was dmgr profiles host',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/WC_adminhost',
# <md>          :displayname =>  'was dmgr profiles ports WC_adminhost',
# <md>          :description => 'was dmgr profiles ports WC_adminhost',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9060',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/WC_adminhost_secure',
# <md>          :displayname =>  'was dmgr profiles ports WC_adminhost_secure',
# <md>          :description => 'was dmgr profiles ports WC_adminhost_secure',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9043',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/BOOTSTRAP_ADDRESS',
# <md>          :displayname =>  'was dmgr profiles ports BOOTSTRAP_ADDRESS',
# <md>          :description => 'was dmgr profiles ports BOOTSTRAP_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9809',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/SOAP_CONNECTOR_ADDRESS',
# <md>          :displayname =>  'was dmgr profiles ports SOAP_CONNECTOR_ADDRESS',
# <md>          :description => 'was dmgr profiles ports SOAP_CONNECTOR_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '8879',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/IPC_CONNECTOR_ADDRESS',
# <md>          :displayname =>  'was dmgr profiles ports IPC_CONNECTOR_ADDRESS',
# <md>          :description => 'was dmgr profiles ports IPC_CONNECTOR_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9632',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/SAS_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :displayname =>  'was dmgr profiles ports SAS_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :description => 'was dmgr profiles ports SAS_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9401',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :displayname =>  'was dmgr profiles ports CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :description => 'was dmgr profiles ports CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9403',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS',
# <md>          :displayname =>  'was dmgr profiles ports CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS',
# <md>          :description => 'was dmgr profiles ports CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9402',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/ORB_LISTENER_ADDRESS',
# <md>          :displayname =>  'was dmgr profiles ports ORB_LISTENER_ADDRESS',
# <md>          :description => 'was dmgr profiles ports ORB_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9100',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/CELL_DISCOVERY_ADDRESS',
# <md>          :displayname =>  'was dmgr profiles ports CELL_DISCOVERY_ADDRESS',
# <md>          :description => 'was dmgr profiles ports CELL_DISCOVERY_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '7277',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/DCS_UNICAST_ADDRESS',
# <md>          :displayname =>  'was dmgr profiles ports DCS_UNICAST_ADDRESS',
# <md>          :description => 'was dmgr profiles ports DCS_UNICAST_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9352',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/DataPowerMgr_inbound_secure',
# <md>          :displayname =>  'was dmgr profiles ports DataPowerMgr_inbound_secure',
# <md>          :description => 'was dmgr profiles ports DataPowerMgr_inbound_secure',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '5555',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/XDAGENT_PORT',
# <md>          :displayname =>  'was dmgr profiles ports XDAGENT_PORT',
# <md>          :description => 'was dmgr profiles ports XDAGENT_PORT',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '7060',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/OVERLAY_UDP_LISTENER_ADDRESS',
# <md>          :displayname =>  'was dmgr profiles ports OVERLAY_UDP_LISTENER_ADDRESS',
# <md>          :description => 'was dmgr profiles ports OVERLAY_UDP_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '11005',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/OVERLAY_TCP_LISTENER_ADDRESS',
# <md>          :displayname =>  'was dmgr profiles ports OVERLAY_TCP_LISTENER_ADDRESS',
# <md>          :description => 'was dmgr profiles ports OVERLAY_TCP_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '11006',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/ports/STATUS_LISTENER_ADDRESS',
# <md>          :displayname =>  'was dmgr profiles ports STATUS_LISTENER_ADDRESS',
# <md>          :description => 'was dmgr profiles ports STATUS_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9420',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/personalcertdn',
# <md>          :displayname =>  'was dmgr profiles personalcertdn',
# <md>          :description => 'was dmgr profiles personalcertdn',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/personalcertvalidityperiod',
# <md>          :displayname =>  'was dmgr profiles personalcertvalidityperiod',
# <md>          :description => 'was dmgr profiles personalcertvalidityperiod',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '3',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/signingcertdn',
# <md>          :displayname =>  'was dmgr profiles signingcertdn',
# <md>          :description => 'was dmgr profiles signingcertdn',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/signingcertvalidityperiod',
# <md>          :displayname =>  'was dmgr profiles signingcertvalidityperiod',
# <md>          :description => 'was dmgr profiles signingcertvalidityperiod',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '15',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/dmgr/keystorepassword',
# <md>          :displayname =>  'was dmgr profiles keystorepassword',
# <md>          :description => 'was dmgr profiles keystorepassword',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'true'

default['was']['profiles']['dmgr'] = {
  'profile' => 'Dmgr01',
  'cell' => 'cell01',
  'node' => '{SHORTHOSTNAME}CellManager01',
  'host' => node['was']['dmgr_host_name'],
  'ports' => {
    'WC_adminhost' => '9060',
    'WC_adminhost_secure' => '9043',
    'BOOTSTRAP_ADDRESS' => '9809',
    'SOAP_CONNECTOR_ADDRESS' => '8879',
    'IPC_CONNECTOR_ADDRESS' => '9632',
    'SAS_SSL_SERVERAUTH_LISTENER_ADDRESS' => '9401',
    'CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS' => '9403',
    'CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS' => '9402',
    'ORB_LISTENER_ADDRESS' => '9100',
    'CELL_DISCOVERY_ADDRESS' => '7277',
    'DCS_UNICAST_ADDRESS' => '9352',
    'DataPowerMgr_inbound_secure' => '5555',
    'XDAGENT_PORT' => '7060',
    'OVERLAY_UDP_LISTENER_ADDRESS' => '11005',
    'OVERLAY_TCP_LISTENER_ADDRESS' => '11006',
    'STATUS_LISTENER_ADDRESS' => '9420'
  }, #'dmgr.ports',
  'personalcertdn' => "cn=" + "{FULLHOSTNAME}" + "\\\\,ou=dmgr\\\\,o=IBM\\\\,c=US",
  'personalcertvalidityperiod' => '3',
  'signingcertdn' => 'cn=cell\\\\,ou=dmgr\\\\,o=IBM\\\\,c=US',
  'signingcertvalidityperiod' => '15',
  'keystorepassword' => ''
}

# Singular Instance per Node

# <md>attribute 'was/profiles/node_profile/profile',
# <md>          :displayname =>  'was node_profile profiles profile',
# <md>          :description => 'was node_profile profiles profile',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'AppSrv01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/dmgr_host',
# <md>          :displayname =>  'was node_profile profiles dmgr_host',
# <md>          :description => 'was node_profile profiles dmgr_host',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/dmgr_port',
# <md>          :displayname =>  'was node_profile profiles dmgr_port',
# <md>          :description => 'was node_profile profiles dmgr_port',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/node',
# <md>          :displayname =>  'was node_profile profiles node',
# <md>          :description => 'was node_profile profiles node',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '{SHORTHOSTNAME}Node01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/host',
# <md>          :displayname =>  'was node_profile profiles host',
# <md>          :description => 'was node_profile profiles host',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/ports/WC_adminhost',
# <md>          :displayname =>  'was node_profile profiles ports WC_adminhost',
# <md>          :description => 'was node_profile profiles ports WC_adminhost',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9060',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/ports/BOOTSTRAP_ADDRESS',
# <md>          :displayname =>  'was node_profile profiles ports BOOTSTRAP_ADDRESS',
# <md>          :description => 'was node_profile profiles ports BOOTSTRAP_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '2810',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/ports/SOAP_CONNECTOR_ADDRESS',
# <md>          :displayname =>  'was node_profile profiles ports SOAP_CONNECTOR_ADDRESS',
# <md>          :description => 'was node_profile profiles ports SOAP_CONNECTOR_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '8878',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/ports/IPC_CONNECTOR_ADDRESS',
# <md>          :displayname =>  'was node_profile profiles ports IPC_CONNECTOR_ADDRESS',
# <md>          :description => 'was node_profile profiles ports IPC_CONNECTOR_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9626',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/ports/SAS_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :displayname =>  'was node_profile profiles ports SAS_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :description => 'was node_profile profiles ports SAS_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9901',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/ports/CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :displayname =>  'was node_profile profiles ports CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :description => 'was node_profile profiles ports CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9201',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/ports/CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS',
# <md>          :displayname =>  'was node_profile profiles ports CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS',
# <md>          :description => 'was node_profile profiles ports CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9202',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/ports/ORB_LISTENER_ADDRESS',
# <md>          :displayname =>  'was node_profile profiles ports ORB_LISTENER_ADDRESS',
# <md>          :description => 'was node_profile profiles ports ORB_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9101',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/ports/NODE_DISCOVERY_ADDRESS',
# <md>          :displayname =>  'was node_profile profiles ports NODE_DISCOVERY_ADDRESS',
# <md>          :description => 'was node_profile profiles ports NODE_DISCOVERY_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '7272',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'


# <md>attribute 'was/profiles/node_profile/ports/NODE_IPV6_MULTICAST_DISCOVERY_ADDRESS',
# <md>          :displayname =>  'was node_profile profiles ports NODE_IPV6_MULTICAST_DISCOVERY_ADDRESS',
# <md>          :description => 'was node_profile profiles ports NODE_IPV6_MULTICAST_DISCOVERY_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '5001',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/ports/NODE_MULTICAST_DISCOVERY_ADDRESS',
# <md>          :displayname =>  'was node_profile profiles ports NODE_MULTICAST_DISCOVERY_ADDRESS',
# <md>          :description => 'was node_profile profiles ports NODE_MULTICAST_DISCOVERY_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '5000',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/ports/DCS_UNICAST_ADDRESS',
# <md>          :displayname =>  'was node_profile profiles ports DCS_UNICAST_ADDRESS',
# <md>          :description => 'was node_profile profiles ports DCS_UNICAST_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9354',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'


# <md>attribute 'was/profiles/node_profile/ports/XDAGENT_PORT',
# <md>          :displayname =>  'was node_profile profiles ports XDAGENT_PORT',
# <md>          :description => 'was node_profile profiles ports XDAGENT_PORT',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '7061',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/ports/OVERLAY_UDP_LISTENER_ADDRESS',
# <md>          :displayname =>  'was node_profile profiles ports OVERLAY_UDP_LISTENER_ADDRESS',
# <md>          :description => 'was node_profile profiles ports OVERLAY_UDP_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '11001',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/ports/OVERLAY_TCP_LISTENER_ADDRESS',
# <md>          :displayname =>  'was node_profile profiles ports OVERLAY_TCP_LISTENER_ADDRESS',
# <md>          :description => 'was node_profile profiles ports OVERLAY_TCP_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '11002',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/ports/STATUS_LISTENER_ADDRESS',
# <md>          :displayname =>  'was node_profile profiles ports STATUS_LISTENER_ADDRESS',
# <md>          :description => 'was node_profile profiles ports STATUS_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9420',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/personalcertdn',
# <md>          :displayname =>  'was node_profile profiles personalcertdn',
# <md>          :description => 'was node_profile profiles personalcertdn',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/personalcertvalidityperiod',
# <md>          :displayname =>  'was node_profile profiles personalcertvalidityperiod',
# <md>          :description => 'was node_profile profiles personalcertvalidityperiod',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '3',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/signingcertdn',
# <md>          :displayname =>  'was node_profile profiles signingcertdn',
# <md>          :description => 'was node_profile profiles signingcertdn',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/signingcertvalidityperiod',
# <md>          :displayname =>  'was node_profile profiles signingcertvalidityperiod',
# <md>          :description => 'was node_profile profiles signingcertvalidityperiod',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '15',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/node_profile/keystorepassword',
# <md>          :displayname =>  'was node_profile profiles keystorepassword',
# <md>          :description => 'was node_profile profiles keystorepassword',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'true'

default['was']['profiles']['node_profile'] = {
  'profile' => 'AppSrv01',
  'dmgr_host' => node['was']['dmgr_host_name'],
  'dmgr_port' => '',
  'node' => '{SHORTHOSTNAME}Node01',
  'host' => '{FULLHOSTNAME}',
  'ports' => {
    'BOOTSTRAP_ADDRESS' => '2810',
    'SOAP_CONNECTOR_ADDRESS' => '8878',
    'IPC_CONNECTOR_ADDRESS' => '9626',
    'SAS_SSL_SERVERAUTH_LISTENER_ADDRESS' => '9901',
    'CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS' => '9201',
    'CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS' => '9202',
    'ORB_LISTENER_ADDRESS' => '9101',
    'NODE_DISCOVERY_ADDRESS' => '7272',
    'NODE_IPV6_MULTICAST_DISCOVERY_ADDRESS' => '5001',
    'NODE_MULTICAST_DISCOVERY_ADDRESS' => '5000',
    'DCS_UNICAST_ADDRESS' => '9354',
    'XDAGENT_PORT' => '7061',
    'OVERLAY_UDP_LISTENER_ADDRESS' => '11001',
    'OVERLAY_TCP_LISTENER_ADDRESS' => '11002'
  }, #'managed.ports',
  'personalcertdn' => "cn=" + "{FULLHOSTNAME}" + "\\\\,ou=nodeagent\\\\,o=IBM\\\\,c=US",
  'personalcertvalidityperiod' => '3',
  'signingcertdn' => 'cn=cell\\\\,ou=nodeagent\\\\,o=IBM\\\\,c=US',
  'signingcertvalidityperiod' => '15',
  'keystorepassword' => ''
}

# Multiple Instances Per Node
# <md>attribute 'was/profiles/standalone_profiles/standalone1/profile',
# <md>          :displayname =>  'was standalone_profiles profiles profile',
# <md>          :description => 'was standalone_profiles profiles profile',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'AppSrv01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/cell',
# <md>          :displayname =>  'was standalone_profiles profiles cell',
# <md>          :description => 'was standalone_profiles profiles cell',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'cell01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/node',
# <md>          :displayname =>  'was standalone_profiles profiles node',
# <md>          :description => 'was standalone_profiles profiles node',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '{SHORTHOSTNAME}Node01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/host',
# <md>          :displayname =>  'was standalone_profiles profiles host',
# <md>          :description => 'was standalone_profiles profiles host',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '{FULLHOSTNAME}',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/server',
# <md>          :displayname =>  'was standalone_profiles profiles server',
# <md>          :description => 'was standalone_profiles profiles server',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'standalone01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/WC_adminhost',
# <md>          :displayname =>  'was standalone_profiles profiles ports WC_adminhost',
# <md>          :description => 'was standalone_profiles profiles ports WC_adminhost',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9060',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/WC_adminhost_secure',
# <md>          :displayname =>  'was standalone_profiles profiles ports WC_adminhost_secure',
# <md>          :description => 'was standalone_profiles profiles ports WC_adminhost_secure',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9043',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/WC_defaulthost',
# <md>          :displayname =>  'was standalone_profiles profiles ports WC_defaulthost',
# <md>          :description => 'was standalone_profiles profiles ports WC_defaulthost',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9080',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/WC_defaulthost_secure',
# <md>          :displayname =>  'was standalone_profiles profiles ports WC_defaulthost_secure',
# <md>          :description => 'was standalone_profiles profiles ports WC_defaulthost_secure',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9443',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/BOOTSTRAP_ADDRESS',
# <md>          :displayname =>  'was standalone_profiles profiles ports BOOTSTRAP_ADDRESS',
# <md>          :description => 'was standalone_profiles profiles ports BOOTSTRAP_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '2809',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/SOAP_CONNECTOR_ADDRESS',
# <md>          :displayname =>  'was standalone_profiles profiles ports SOAP_CONNECTOR_ADDRESS',
# <md>          :description => 'was standalone_profiles profiles ports SOAP_CONNECTOR_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '8880',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/IPC_CONNECTOR_ADDRESS',
# <md>          :displayname =>  'was standalone_profiles profiles ports IPC_CONNECTOR_ADDRESS',
# <md>          :description => 'was standalone_profiles profiles ports IPC_CONNECTOR_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9633',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/SAS_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :displayname =>  'was standalone_profiles profiles ports SAS_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :description => 'was standalone_profiles profiles ports SAS_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9401',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :displayname =>  'was standalone_profiles profiles ports CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :description => 'was standalone_profiles profiles ports CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9403',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS',
# <md>          :displayname =>  'was standalone_profiles profiles ports CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS',
# <md>          :description => 'was standalone_profiles profiles ports CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9402',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/ORB_LISTENER_ADDRESS',
# <md>          :displayname =>  'was standalone_profiles profiles ports ORB_LISTENER_ADDRESS',
# <md>          :description => 'was standalone_profiles profiles ports ORB_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9100',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/DCS_UNICAST_ADDRESS',
# <md>          :displayname =>  'was standalone_profiles profiles ports DCS_UNICAST_ADDRESS',
# <md>          :description => 'was standalone_profiles profiles ports DCS_UNICAST_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9353',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/SIB_ENDPOINT_ADDRESS',
# <md>          :displayname =>  'was standalone_profiles profiles ports SIB_ENDPOINT_ADDRESS',
# <md>          :description => 'was standalone_profiles profiles ports SIB_ENDPOINT_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '7276',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/SIB_ENDPOINT_SECURE_ADDRESS',
# <md>          :displayname =>  'was standalone_profiles profiles ports SIB_ENDPOINT_SECURE_ADDRESS',
# <md>          :description => 'was standalone_profiles profiles ports SIB_ENDPOINT_SECURE_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '7286',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/SIB_MQ_ENDPOINT_ADDRESS',
# <md>          :displayname =>  'was standalone_profiles profiles ports SIB_MQ_ENDPOINT_ADDRESS',
# <md>          :description => 'was standalone_profiles profiles ports SIB_MQ_ENDPOINT_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '5558',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/SIB_MQ_ENDPOINT_SECURE_ADDRESS',
# <md>          :displayname =>  'was standalone_profiles profiles ports SIB_MQ_ENDPOINT_SECURE_ADDRESS',
# <md>          :description => 'was standalone_profiles profiles ports SIB_MQ_ENDPOINT_SECURE_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '5578',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/SIP_DEFAULTHOST',
# <md>          :displayname =>  'was standalone_profiles profiles ports SIP_DEFAULTHOST',
# <md>          :description => 'was standalone_profiles profiles ports SIP_DEFAULTHOST',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '5060',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/SIP_DEFAULTHOST_SECURE',
# <md>          :displayname =>  'was standalone_profiles profiles ports SIP_DEFAULTHOST_SECURE',
# <md>          :description => 'was standalone_profiles profiles ports SIP_DEFAULTHOST_SECURE',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '5061',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/OVERLAY_UDP_LISTENER_ADDRESS',
# <md>          :displayname =>  'was standalone_profiles profiles ports OVERLAY_UDP_LISTENER_ADDRESS',
# <md>          :description => 'was standalone_profiles profiles ports OVERLAY_UDP_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '11003',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/ports/OVERLAY_TCP_LISTENER_ADDRESS',
# <md>          :displayname =>  'was standalone_profiles profiles ports OVERLAY_TCP_LISTENER_ADDRESS',
# <md>          :description => 'was standalone_profiles profiles ports OVERLAY_TCP_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '11004',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/personalcertdn',
# <md>          :displayname =>  'was standalone_profiles profiles personalcertdn',
# <md>          :description => 'was standalone_profiles profiles personalcertdn',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/personalcertvalidityperiod',
# <md>          :displayname =>  'was standalone_profiles profiles personalcertvalidityperiod',
# <md>          :description => 'was standalone_profiles profiles personalcertvalidityperiod',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '3',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/signingcertdn',
# <md>          :displayname =>  'was standalone_profiles profiles signingcertdn',
# <md>          :description => 'was standalone_profiles profiles signingcertdn',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/signingcertvalidityperiod',
# <md>          :displayname =>  'was standalone_profiles profiles signingcertvalidityperiod',
# <md>          :description => 'was standalone_profiles profiles signingcertvalidityperiod',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '15',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/standalone_profiles/standalone1/keystorepassword',
# <md>          :displayname =>  'was standalone_profiles profiles keystorepassword',
# <md>          :description => 'was standalone_profiles profiles keystorepassword',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'true'

default['was']['profiles']['standalone_profiles'] = {
  "standalone1" => {
    'profile' => 'AppSrv01',
    'cell' => 'cell01',
    'node' => '{SHORTHOSTNAME}Node01',
    'host' => '{FULLHOSTNAME}',
    'server' => 'standalone01',
    'ports' => {
      'WC_adminhost' => '9060',
      'WC_adminhost_secure' => '9043',
      'WC_defaulthost' => '9080',
      'WC_defaulthost_secure' => '9443',
      'BOOTSTRAP_ADDRESS' => '2809',
      'SOAP_CONNECTOR_ADDRESS' => '8880',
      'IPC_CONNECTOR_ADDRESS' => '9633',
      'SAS_SSL_SERVERAUTH_LISTENER_ADDRESS' => '9401',
      'CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS' => '9403',
      'CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS' => '9402',
      'ORB_LISTENER_ADDRESS' => '9100',
      'DCS_UNICAST_ADDRESS' => '9353',
      'SIB_ENDPOINT_ADDRESS' => '7276',
      'SIB_ENDPOINT_SECURE_ADDRESS' => '7286',
      'SIB_MQ_ENDPOINT_ADDRESS' => '5558',
      'SIB_MQ_ENDPOINT_SECURE_ADDRESS' => '5578',
      'SIP_DEFAULTHOST' => '5060',
      'SIP_DEFAULTHOST_SECURE' => '5061',
      'OVERLAY_UDP_LISTENER_ADDRESS' => '11003',
      'OVERLAY_TCP_LISTENER_ADDRESS' => '11004'
    }, #'managed.ports',
    'personalcertdn' => "cn=" + "{FULLHOSTNAME}" + "\\\\,ou=nodeagent\\\\,o=IBM\\\\,c=US",
    'personalcertvalidityperiod' => '3',
    'signingcertdn' => 'cn=cell\\\\,ou=nodeagent\\\\,o=IBM\\\\,c=US',
    'signingcertvalidityperiod' => '15',
    'keystorepassword' => ''
  }
}

# <md>attribute 'was/profiles/job_manager/profile',
# <md>          :displayname =>  'was job_manager profiles profile',
# <md>          :description => 'was job_manager profiles profile',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'JobMgr01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/cell',
# <md>          :displayname =>  'was job_manager profiles cell',
# <md>          :description => 'was job_manager profiles cell',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'cell01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/node',
# <md>          :displayname =>  'was job_manager profiles node',
# <md>          :description => 'was job_manager profiles node',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '{SHORTHOSTNAME}JobMgr01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/host',
# <md>          :displayname =>  'was job_manager profiles host',
# <md>          :description => 'was job_manager profiles host',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '{FULLHOSTNAME}',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/ports/WC_adminhost',
# <md>          :displayname =>  'was job_manager profiles ports WC_adminhost',
# <md>          :description => 'was job_manager profiles ports WC_adminhost',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9960',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/ports/WC_adminhost_secure',
# <md>          :displayname =>  'was job_manager profiles ports WC_adminhost_secure',
# <md>          :description => 'was job_manager profiles ports WC_adminhost_secure',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9943',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/ports/BOOTSTRAP_ADDRESS',
# <md>          :displayname =>  'was job_manager profiles ports BOOTSTRAP_ADDRESS',
# <md>          :description => 'was job_manager profiles ports BOOTSTRAP_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9808',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/ports/SOAP_CONNECTOR_ADDRESS',
# <md>          :displayname =>  'was job_manager profiles ports SOAP_CONNECTOR_ADDRESS',
# <md>          :description => 'was job_manager profiles ports SOAP_CONNECTOR_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '8876',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/ports/IPC_CONNECTOR_ADDRESS',
# <md>          :displayname =>  'was job_manager profiles ports IPC_CONNECTOR_ADDRESS',
# <md>          :description => 'was job_manager profiles ports IPC_CONNECTOR_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9631',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/ports/SAS_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :displayname =>  'was job_manager profiles ports SAS_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :description => 'was job_manager profiles ports SAS_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9401',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/ports/CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :displayname =>  'was job_manager profiles ports CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :description => 'was job_manager profiles ports CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9403',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/ports/CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS',
# <md>          :displayname =>  'was job_manager profiles ports CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS',
# <md>          :description => 'was job_manager profiles ports CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9402',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/ports/ORB_LISTENER_ADDRESS',
# <md>          :displayname =>  'was job_manager profiles ports ORB_LISTENER_ADDRESS',
# <md>          :description => 'was job_manager profiles ports ORB_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9099',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/ports/STATUS_LISTENER_ADDRESS',
# <md>          :displayname =>  'was job_manager profiles ports STATUS_LISTENER_ADDRESS',
# <md>          :description => 'was job_manager profiles ports STATUS_LISTENER_ADDRESS',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '9425',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/personalcertdn',
# <md>          :displayname =>  'was job_manager profiles personalcertdn',
# <md>          :description => 'was job_manager profiles personalcertdn',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/personalcertvalidityperiod',
# <md>          :displayname =>  'was job_manager profiles personalcertvalidityperiod',
# <md>          :description => 'was job_manager profiles personalcertvalidityperiod',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '3',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/signingcertdn',
# <md>          :displayname =>  'was job_manager profiles signingcertdn',
# <md>          :description => 'was job_manager profiles signingcertdn',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/signingcertvalidityperiod',
# <md>          :displayname =>  'was job_manager profiles signingcertvalidityperiod',
# <md>          :description => 'was job_manager profiles signingcertvalidityperiod',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '15',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/profiles/job_manager/keystorepassword',
# <md>          :displayname =>  'was job_manager profiles keystorepassword',
# <md>          :description => 'was job_manager profiles keystorepassword',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'none',
# <md>          :secret => 'true'

default['was']['profiles']['job_manager'] = {
  'profile' => 'JobMgr01',
  'cell' => 'cell01',
  'node' => '{SHORTHOSTNAME}JobMgr01',
  'host' => '{FULLHOSTNAME}',
  'ports' => {
    'WC_adminhost' => '9960',
    'WC_adminhost_secure' => '9943',
    'BOOTSTRAP_ADDRESS' => '9808',
    'SOAP_CONNECTOR_ADDRESS' => '8876',
    'IPC_CONNECTOR_ADDRESS' => '9631',
    'SAS_SSL_SERVERAUTH_LISTENER_ADDRESS' => '9401',
    'CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS' => '9403',
    'CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS' => '9402',
    'ORB_LISTENER_ADDRESS' => '9099',
    'STATUS_LISTENER_ADDRESS' => '9425'
  }, #'job_manager.ports',
  'personalcertdn' => "cn=" + "{FULLHOSTNAME}" + "\\\\,ou=job_manager\\\\,o=IBM\\\\,c=US",
  'personalcertvalidityperiod' => '3',
  'signingcertdn' => 'cn=cell\\\\,ou=job_manager\\\\,o=IBM\\\\,c=US',
  'signingcertvalidityperiod' => '15',
  'keystorepassword' => ''
}

# <md>attribute 'was/unmanaged_node/unmngNode01/node_name',
# <md>          :displayname =>  'was unmanaged_node node_name',
# <md>          :description => 'was unmanaged_node node_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '{SHORTHOSTNAME}UnmangedNode01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/unmanaged_node/unmngNode01/host_name',
# <md>          :displayname =>  'was unmanaged_node host_name',
# <md>          :description => 'was unmanaged_node host_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/unmanaged_node/unmngNode01/os',
# <md>          :displayname =>  'was unmanaged_node os',
# <md>          :description => 'was unmanaged_node os',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'linux',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

default['was']['unmanaged_node'] = {
  'unmngNode01'  =>  {
    'node_name'  =>  '{SHORTHOSTNAME}UnmangedNode01',
    'host_name' =>     node['was']['ihs_host_name'],
    'os' =>   "linux"
  }
}

# <md>attribute 'was/webserver/ihs_server/node_name',
# <md>          :displayname =>  'was webserver ihs_server node_name',
# <md>          :description => 'was webserver ihs_server node_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '{SHORTHOSTNAME}UnmangedNode01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/webserver/ihs_server/webserver_name',
# <md>          :displayname =>  'was webserver ihs_server webserver_name',
# <md>          :description => 'was webserver ihs_server webserver_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'webserver1',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/webserver/ihs_server/webserver_port',
# <md>          :displayname =>  'was webserver ihs_server webserver_port',
# <md>          :description => 'was webserver ihs_server webserver_port',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '80',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/webserver/ihs_server/install_dir',
# <md>          :displayname =>  'was webserver ihs_server install_dir',
# <md>          :description => 'was webserver ihs_server install_dir',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/opt/IBM/HTTPServer',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/webserver/ihs_server/plugin_dir',
# <md>          :displayname =>  'was webserver ihs_server plugin_dir',
# <md>          :description => 'was webserver ihs_server plugin_dir',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '/opt/IBM/WebSphere/Plugins',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/webserver/ihs_server/admin_port',
# <md>          :displayname =>  'was webserver ihs_server admin_port',
# <md>          :description => 'was webserver ihs_server admin_port',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '8008',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/webserver/ihs_server/ihs_admin_user',
# <md>          :displayname =>  'was webserver ihs_server ihs_admin_user',
# <md>          :description => 'was webserver ihs_server ihs_admin_user',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/webserver/ihs_server/ihs_admin_password',
# <md>          :displayname =>  'was webserver ihs_server ihs_admin_password',
# <md>          :description => 'was webserver ihs_server ihs_admin_password',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'true'

# <md>attribute 'was/webserver/ihs_server/webserver_type',
# <md>          :displayname =>  'was webserver ihs_server webserver_type',
# <md>          :description => 'was webserver ihs_server webserver_type',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'IHS',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/webserver/ihs_server/webapp_mapping',
# <md>          :displayname =>  'was webserver ihs_server webapp_mapping',
# <md>          :description => 'was webserver ihs_server webapp_mapping',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'ALL',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

default['was']['webserver'] = {
  'ihs_server'  =>  {
    'node_name'  =>  '{SHORTHOSTNAME}UnmangedNode01',
    'webserver_name' => 'webserver1',
    'webserver_port' =>   '80',
    'install_dir' => '/opt/IBM/HTTPServer',
    'plugin_dir' => '/opt/IBM/WebSphere/Plugins',
    'admin_port' => '8008',
    'ihs_admin_user' => '',
    'ihs_admin_password' => '',
    'webserver_type' => 'IHS',
    'webapp_mapping' => 'ALL'
  }
}

#<> WebSphere configure jvm properties and cluster configurations

# <md>attribute 'was/wsadmin/dmgr/jvmproperty/server_name',
# <md>          :displayname =>  'was wsadmin dmgr jvmproperty server_name',
# <md>          :description => 'was wsadmin dmgr jvmproperty server_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'dmgr',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/dmgr/jvmproperty/node_name',
# <md>          :displayname =>  'was wsadmin dmgr jvmproperty node_name',
# <md>          :description => 'was wsadmin dmgr jvmproperty node_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '{SHORTHOSTNAME}CellManager01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/dmgr/jvmproperty/profile_path',
# <md>          :displayname =>  'was wsadmin dmgr jvmproperty profile_path',
# <md>          :description => 'was wsadmin dmgr jvmproperty profile_path',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/dmgr/jvmproperty/property_value_initial',
# <md>          :displayname =>  'was wsadmin dmgr jvmproperty property_value_initial',
# <md>          :description => 'was wsadmin dmgr jvmproperty property_value_initial',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '256',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/dmgr/jvmproperty/property_value_maximum',
# <md>          :displayname =>  'was wsadmin dmgr jvmproperty property_value_maximum',
# <md>          :description => 'was wsadmin dmgr jvmproperty property_value_maximum',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '512',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/nodeagent/jvmproperty/server_name',
# <md>          :displayname =>  'was wsadmin nodeagent jvmproperty server_name',
# <md>          :description => 'was wsadmin nodeagent jvmproperty server_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'nodeagent',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/nodeagent/jvmproperty/node_name',
# <md>          :displayname =>  'was wsadmin nodeagent jvmproperty node_name',
# <md>          :description => 'was wsadmin nodeagent jvmproperty node_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/nodeagent/jvmproperty/profile_path',
# <md>          :displayname =>  'was wsadmin nodeagent jvmproperty profile_path',
# <md>          :description => 'was wsadmin nodeagent jvmproperty profile_path',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/nodeagent/jvmproperty/property_value_initial',
# <md>          :displayname =>  'was wsadmin nodeagent jvmproperty property_value_initial',
# <md>          :description => 'was wsadmin nodeagent jvmproperty property_value_initial',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '256',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/nodeagent/jvmproperty/property_value_maximum',
# <md>          :displayname =>  'was wsadmin nodeagent jvmproperty property_value_maximum',
# <md>          :description => 'was wsadmin nodeagent jvmproperty property_value_maximum',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '512',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/standalone/jvmproperty/server_name',
# <md>          :displayname =>  'was wsadmin standalone jvmproperty server_name',
# <md>          :description => 'was wsadmin standalone jvmproperty server_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/standalone/jvmproperty/node_name',
# <md>          :displayname =>  'was wsadmin standalone jvmproperty node_name',
# <md>          :description => 'was wsadmin standalone jvmproperty node_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/standalone/jvmproperty/profile_path',
# <md>          :displayname =>  'was wsadmin standalone jvmproperty profile_path',
# <md>          :description => 'was wsadmin standalone jvmproperty profile_path',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/standalone/jvmproperty/property_value_initial',
# <md>          :displayname =>  'was wsadmin standalone jvmproperty property_value_initial',
# <md>          :description => 'was wsadmin standalone jvmproperty property_value_initial',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '256',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/standalone/jvmproperty/property_value_maximum',
# <md>          :displayname =>  'was wsadmin standalone jvmproperty property_value_maximum',
# <md>          :description => 'was wsadmin standalone jvmproperty property_value_maximum',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => '512',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/clusters/cluster01/cluster_name',
# <md>          :displayname =>  'was clusters cluster_name',
# <md>          :description => 'was clusters cluster_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'cluster01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/clusters/cluster01/session_rep',
# <md>          :displayname =>  'was wsadmin clusters cluster01 session_rep',
# <md>          :description => 'was wsadmin clusters cluster01 session_rep',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'true ',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

# <md>attribute 'was/wsadmin/clusters/cluster01/cluster_servers/cluster_server01/server_name',
# <md>          :displayname =>  'was cluster_servers server_name',
# <md>          :description => 'was cluster_servers server_name',
# <md>          :type => 'string',
# <md>          :required => 'recommended',
# <md>          :default => 'server01',
# <md>          :selectable => 'false',
# <md>          :precedence_level => 'node',
# <md>          :parm_type => 'node',
# <md>          :secret => 'false'

default['was']['wsadmin'] = {
  'dmgr'  =>  {
    'jvmproperty' => {
      'server_name' => 'dmgr',
      'node_name' => node['was']['profiles']['dmgr']['node'],
      'profile_path' => "#{node['was']['profile_dir']}/#{node['was']['profiles']['dmgr']['profile']}",
      'property_value_initial' =>   "256",
      'property_value_maximum' =>   "512"
    }
  },
  'nodeagent'  =>  {
    'jvmproperty' => {
      'server_name' => 'nodeagent',
      'node_name' => node['was']['profiles']['node_profile']['node'],
      'profile_path' => "#{node['was']['profile_dir']}/#{node['was']['profiles']['node_profile']['profile']}",
      'property_value_initial' =>   "256",
      'property_value_maximum' =>   "512"
    }
  },
  'standalone'  =>  {
    'jvmproperty' => {
      'server_name' => node['was']['profiles']['standalone_profiles']['standalone1']['server'],
      'node_name' => node['was']['profiles']['standalone_profiles']['standalone1']['node'],
      'profile_path' => "#{node['was']['profile_dir']}/#{node['was']['profiles']['standalone_profiles']['standalone1']['profile']}",
      'property_value_initial' =>   "256",
      'property_value_maximum' =>   "512"
    }
  },
  'clusters'  =>  {
    'cluster01'  =>  {
      'cluster_name' => 'cluster01',
      'session_rep' =>   "true",
      'cluster_servers' => {
        'cluster_server01'  =>  {
          'server_name' =>     "server01"
        }
      }
    }
  }
}
