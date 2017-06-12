Was Cookbook
============

Installs/Configures WebSphere Application Server

Requirements
------------

### Platform:

*No platforms defined*

### Cookbooks:

* ibm_cloud_utils
* im
* linux

Attributes
----------

<table>
  <tr>
    <td>Attribute</td>
    <td>Description</td>
    <td>Default</td>
  </tr>
  <tr>
    <td><code>node['was']['config']['enable_admin_security']</code></td>
    <td>was enable_admin_security</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was']['config']['os_service']</code></td>
    <td>was os_service</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was']['config']['use_default_certs']</code></td>
    <td>was use_default_certs</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was']['dmgr_host_name']</code></td>
    <td>was dmgr_host_name</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['dmgr_role_name']</code></td>
    <td>dmgr_role_name</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['edition']['base']</code></td>
    <td>WebSphere base edition</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['was']['edition']['nd']</code></td>
    <td>WebSphere nd edition</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was']['features']['core.feature']</code></td>
    <td>WebSphere features core.feature</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was']['features']['ejbdeploy']</code></td>
    <td>WebSphere features ejbdeploy</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was']['features']['embeddablecontainer']</code></td>
    <td>WebSphere features embeddablecontainer</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was']['features']['liberty']</code></td>
    <td>WebSphere features liberty</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['was']['features']['samples']</code></td>
    <td>WebSphere features samples</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['was']['features']['thinclient']</code></td>
    <td>WebSphere features thinclient</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was']['ihs_host_name']</code></td>
    <td>was ihs_host_name</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['ihs_role_names']</code></td>
    <td>ihs_role_names</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['install_dir']</code></td>
    <td>WebSphere install_dir</td>
    <td><code>/opt/IBM/WebSphere/AppServer</code></td>
  </tr>
  <tr>
    <td><code>node['was']['java_features']['websphere_java_v8']['enable']</code></td>
    <td>WebSphere java_features websphere_java_v8 enable</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['was']['java_features']['websphere_java_v8']['offering_id']</code></td>
    <td>WebSphere java_features websphere_java_v8 offering_id</td>
    <td><code>com.ibm.java.jdk.v8</code></td>
  </tr>
  <tr>
    <td><code>node['was']['java_version']</code></td>
    <td>WebSphere nd java_version</td>
    <td><code>8.0.4.10</code></td>
  </tr>
  <tr>
    <td><code>node['was']['os_perms']</code></td>
    <td>WebSphere os_perms</td>
    <td><code>750</code></td>
  </tr>
  <tr>
    <td><code>node['was']['os_users']['was']['comment']</code></td>
    <td>was os_users comment</td>
    <td><code>WAS administrative user</code></td>
  </tr>
  <tr>
    <td><code>node['was']['os_users']['was']['gid']</code></td>
    <td>was os_users gid</td>
    <td><code>wasgrp</code></td>
  </tr>
  <tr>
    <td><code>node['was']['os_users']['was']['home']</code></td>
    <td>was os_users home</td>
    <td><code>/home/wasadmin</code></td>
  </tr>
  <tr>
    <td><code>node['was']['os_users']['was']['ldap_user']</code></td>
    <td>was ldap_user</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['was']['os_users']['was']['name']</code></td>
    <td>was os_users name</td>
    <td><code>wasadmin</code></td>
  </tr>
  <tr>
    <td><code>node['was']['os_users']['was']['shell']</code></td>
    <td>was os_users shell</td>
    <td><code>/bin/bash</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profile_dir']</code></td>
    <td>WebSphere profile_dir</td>
    <td><code>/opt/IBM/WebSphere/AppServer/profiles</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['cell']</code></td>
    <td>was dmgr profiles cell</td>
    <td><code>cell01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['host']</code></td>
    <td>was dmgr profiles host</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['keystorepassword']</code></td>
    <td>was dmgr profiles keystorepassword</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['node']</code></td>
    <td>was dmgr profiles node</td>
    <td><code>{SHORTHOSTNAME}CellManager01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['personalcertdn']</code></td>
    <td>was dmgr profiles personalcertdn</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['personalcertvalidityperiod']</code></td>
    <td>was dmgr profiles personalcertvalidityperiod</td>
    <td><code>3</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['BOOTSTRAP_ADDRESS']</code></td>
    <td>was dmgr profiles ports BOOTSTRAP_ADDRESS</td>
    <td><code>9809</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['CELL_DISCOVERY_ADDRESS']</code></td>
    <td>was dmgr profiles ports CELL_DISCOVERY_ADDRESS</td>
    <td><code>7277</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS']</code></td>
    <td>was dmgr profiles ports CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS</td>
    <td><code>9402</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS']</code></td>
    <td>was dmgr profiles ports CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS</td>
    <td><code>9403</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['DCS_UNICAST_ADDRESS']</code></td>
    <td>was dmgr profiles ports DCS_UNICAST_ADDRESS</td>
    <td><code>9352</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['DataPowerMgr_inbound_secure']</code></td>
    <td>was dmgr profiles ports DataPowerMgr_inbound_secure</td>
    <td><code>5555</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['IPC_CONNECTOR_ADDRESS']</code></td>
    <td>was dmgr profiles ports IPC_CONNECTOR_ADDRESS</td>
    <td><code>9632</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['ORB_LISTENER_ADDRESS']</code></td>
    <td>was dmgr profiles ports ORB_LISTENER_ADDRESS</td>
    <td><code>9100</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['OVERLAY_TCP_LISTENER_ADDRESS']</code></td>
    <td>was dmgr profiles ports OVERLAY_TCP_LISTENER_ADDRESS</td>
    <td><code>11006</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['OVERLAY_UDP_LISTENER_ADDRESS']</code></td>
    <td>was dmgr profiles ports OVERLAY_UDP_LISTENER_ADDRESS</td>
    <td><code>11005</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['SAS_SSL_SERVERAUTH_LISTENER_ADDRESS']</code></td>
    <td>was dmgr profiles ports SAS_SSL_SERVERAUTH_LISTENER_ADDRESS</td>
    <td><code>9401</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['SOAP_CONNECTOR_ADDRESS']</code></td>
    <td>was dmgr profiles ports SOAP_CONNECTOR_ADDRESS</td>
    <td><code>8879</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['STATUS_LISTENER_ADDRESS']</code></td>
    <td>was dmgr profiles ports STATUS_LISTENER_ADDRESS</td>
    <td><code>9420</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['WC_adminhost']</code></td>
    <td>was dmgr profiles ports WC_adminhost</td>
    <td><code>9060</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['WC_adminhost_secure']</code></td>
    <td>was dmgr profiles ports WC_adminhost_secure</td>
    <td><code>9043</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['ports']['XDAGENT_PORT']</code></td>
    <td>was dmgr profiles ports XDAGENT_PORT</td>
    <td><code>7060</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['profile']</code></td>
    <td>was dmgr profiles profile</td>
    <td><code>Dmgr01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['signingcertdn']</code></td>
    <td>was dmgr profiles signingcertdn</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['dmgr']['signingcertvalidityperiod']</code></td>
    <td>was dmgr profiles signingcertvalidityperiod</td>
    <td><code>15</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['cell']</code></td>
    <td>was job_manager profiles cell</td>
    <td><code>cell01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['host']</code></td>
    <td>was job_manager profiles host</td>
    <td><code>{FULLHOSTNAME}</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['keystorepassword']</code></td>
    <td>was job_manager profiles keystorepassword</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['node']</code></td>
    <td>was job_manager profiles node</td>
    <td><code>{SHORTHOSTNAME}JobMgr01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['personalcertdn']</code></td>
    <td>was job_manager profiles personalcertdn</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['personalcertvalidityperiod']</code></td>
    <td>was job_manager profiles personalcertvalidityperiod</td>
    <td><code>3</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['ports']['BOOTSTRAP_ADDRESS']</code></td>
    <td>was job_manager profiles ports BOOTSTRAP_ADDRESS</td>
    <td><code>9808</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['ports']['CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS']</code></td>
    <td>was job_manager profiles ports CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS</td>
    <td><code>9402</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['ports']['CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS']</code></td>
    <td>was job_manager profiles ports CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS</td>
    <td><code>9403</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['ports']['IPC_CONNECTOR_ADDRESS']</code></td>
    <td>was job_manager profiles ports IPC_CONNECTOR_ADDRESS</td>
    <td><code>9631</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['ports']['ORB_LISTENER_ADDRESS']</code></td>
    <td>was job_manager profiles ports ORB_LISTENER_ADDRESS</td>
    <td><code>9099</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['ports']['SAS_SSL_SERVERAUTH_LISTENER_ADDRESS']</code></td>
    <td>was job_manager profiles ports SAS_SSL_SERVERAUTH_LISTENER_ADDRESS</td>
    <td><code>9401</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['ports']['SOAP_CONNECTOR_ADDRESS']</code></td>
    <td>was job_manager profiles ports SOAP_CONNECTOR_ADDRESS</td>
    <td><code>8876</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['ports']['STATUS_LISTENER_ADDRESS']</code></td>
    <td>was job_manager profiles ports STATUS_LISTENER_ADDRESS</td>
    <td><code>9425</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['ports']['WC_adminhost']</code></td>
    <td>was job_manager profiles ports WC_adminhost</td>
    <td><code>9960</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['ports']['WC_adminhost_secure']</code></td>
    <td>was job_manager profiles ports WC_adminhost_secure</td>
    <td><code>9943</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['profile']</code></td>
    <td>was job_manager profiles profile</td>
    <td><code>JobMgr01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['signingcertdn']</code></td>
    <td>was job_manager profiles signingcertdn</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['job_manager']['signingcertvalidityperiod']</code></td>
    <td>was job_manager profiles signingcertvalidityperiod</td>
    <td><code>15</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['dmgr_host']</code></td>
    <td>was node_profile profiles dmgr_host</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['dmgr_port']</code></td>
    <td>was node_profile profiles dmgr_port</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['host']</code></td>
    <td>was node_profile profiles host</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['keystorepassword']</code></td>
    <td>was node_profile profiles keystorepassword</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['node']</code></td>
    <td>was node_profile profiles node</td>
    <td><code>{SHORTHOSTNAME}Node01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['personalcertdn']</code></td>
    <td>was node_profile profiles personalcertdn</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['personalcertvalidityperiod']</code></td>
    <td>was node_profile profiles personalcertvalidityperiod</td>
    <td><code>3</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['BOOTSTRAP_ADDRESS']</code></td>
    <td>was node_profile profiles ports BOOTSTRAP_ADDRESS</td>
    <td><code>2810</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS']</code></td>
    <td>was node_profile profiles ports CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS</td>
    <td><code>9202</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS']</code></td>
    <td>was node_profile profiles ports CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS</td>
    <td><code>9201</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['DCS_UNICAST_ADDRESS']</code></td>
    <td>was node_profile profiles ports DCS_UNICAST_ADDRESS</td>
    <td><code>9354</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['IPC_CONNECTOR_ADDRESS']</code></td>
    <td>was node_profile profiles ports IPC_CONNECTOR_ADDRESS</td>
    <td><code>9626</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['NODE_DISCOVERY_ADDRESS']</code></td>
    <td>was node_profile profiles ports NODE_DISCOVERY_ADDRESS</td>
    <td><code>7272</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['NODE_IPV6_MULTICAST_DISCOVERY_ADDRESS']</code></td>
    <td>was node_profile profiles ports NODE_IPV6_MULTICAST_DISCOVERY_ADDRESS</td>
    <td><code>5001</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['NODE_MULTICAST_DISCOVERY_ADDRESS']</code></td>
    <td>was node_profile profiles ports NODE_MULTICAST_DISCOVERY_ADDRESS</td>
    <td><code>5000</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['ORB_LISTENER_ADDRESS']</code></td>
    <td>was node_profile profiles ports ORB_LISTENER_ADDRESS</td>
    <td><code>9101</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['OVERLAY_TCP_LISTENER_ADDRESS']</code></td>
    <td>was node_profile profiles ports OVERLAY_TCP_LISTENER_ADDRESS</td>
    <td><code>11002</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['OVERLAY_UDP_LISTENER_ADDRESS']</code></td>
    <td>was node_profile profiles ports OVERLAY_UDP_LISTENER_ADDRESS</td>
    <td><code>11001</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['SAS_SSL_SERVERAUTH_LISTENER_ADDRESS']</code></td>
    <td>was node_profile profiles ports SAS_SSL_SERVERAUTH_LISTENER_ADDRESS</td>
    <td><code>9901</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['SOAP_CONNECTOR_ADDRESS']</code></td>
    <td>was node_profile profiles ports SOAP_CONNECTOR_ADDRESS</td>
    <td><code>8878</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['STATUS_LISTENER_ADDRESS']</code></td>
    <td>was node_profile profiles ports STATUS_LISTENER_ADDRESS</td>
    <td><code>9420</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['WC_adminhost']</code></td>
    <td>was node_profile profiles ports WC_adminhost</td>
    <td><code>9060</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['ports']['XDAGENT_PORT']</code></td>
    <td>was node_profile profiles ports XDAGENT_PORT</td>
    <td><code>7061</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['profile']</code></td>
    <td>was node_profile profiles profile</td>
    <td><code>AppSrv01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['signingcertdn']</code></td>
    <td>was node_profile profiles signingcertdn</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['node_profile']['signingcertvalidityperiod']</code></td>
    <td>was node_profile profiles signingcertvalidityperiod</td>
    <td><code>15</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['cell']</code></td>
    <td>was standalone_profiles profiles cell</td>
    <td><code>cell01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['host']</code></td>
    <td>was standalone_profiles profiles host</td>
    <td><code>{FULLHOSTNAME}</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['keystorepassword']</code></td>
    <td>was standalone_profiles profiles keystorepassword</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['node']</code></td>
    <td>was standalone_profiles profiles node</td>
    <td><code>{SHORTHOSTNAME}Node01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['personalcertdn']</code></td>
    <td>was standalone_profiles profiles personalcertdn</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['personalcertvalidityperiod']</code></td>
    <td>was standalone_profiles profiles personalcertvalidityperiod</td>
    <td><code>3</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['BOOTSTRAP_ADDRESS']</code></td>
    <td>was standalone_profiles profiles ports BOOTSTRAP_ADDRESS</td>
    <td><code>2809</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS']</code></td>
    <td>was standalone_profiles profiles ports CSIV2_SSL_MUTUALAUTH_LISTENER_ADDRESS</td>
    <td><code>9402</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS']</code></td>
    <td>was standalone_profiles profiles ports CSIV2_SSL_SERVERAUTH_LISTENER_ADDRESS</td>
    <td><code>9403</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['DCS_UNICAST_ADDRESS']</code></td>
    <td>was standalone_profiles profiles ports DCS_UNICAST_ADDRESS</td>
    <td><code>9353</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['IPC_CONNECTOR_ADDRESS']</code></td>
    <td>was standalone_profiles profiles ports IPC_CONNECTOR_ADDRESS</td>
    <td><code>9633</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['ORB_LISTENER_ADDRESS']</code></td>
    <td>was standalone_profiles profiles ports ORB_LISTENER_ADDRESS</td>
    <td><code>9100</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['OVERLAY_TCP_LISTENER_ADDRESS']</code></td>
    <td>was standalone_profiles profiles ports OVERLAY_TCP_LISTENER_ADDRESS</td>
    <td><code>11004</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['OVERLAY_UDP_LISTENER_ADDRESS']</code></td>
    <td>was standalone_profiles profiles ports OVERLAY_UDP_LISTENER_ADDRESS</td>
    <td><code>11003</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['SAS_SSL_SERVERAUTH_LISTENER_ADDRESS']</code></td>
    <td>was standalone_profiles profiles ports SAS_SSL_SERVERAUTH_LISTENER_ADDRESS</td>
    <td><code>9401</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['SIB_ENDPOINT_ADDRESS']</code></td>
    <td>was standalone_profiles profiles ports SIB_ENDPOINT_ADDRESS</td>
    <td><code>7276</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['SIB_ENDPOINT_SECURE_ADDRESS']</code></td>
    <td>was standalone_profiles profiles ports SIB_ENDPOINT_SECURE_ADDRESS</td>
    <td><code>7286</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['SIB_MQ_ENDPOINT_ADDRESS']</code></td>
    <td>was standalone_profiles profiles ports SIB_MQ_ENDPOINT_ADDRESS</td>
    <td><code>5558</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['SIB_MQ_ENDPOINT_SECURE_ADDRESS']</code></td>
    <td>was standalone_profiles profiles ports SIB_MQ_ENDPOINT_SECURE_ADDRESS</td>
    <td><code>5578</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['SIP_DEFAULTHOST']</code></td>
    <td>was standalone_profiles profiles ports SIP_DEFAULTHOST</td>
    <td><code>5060</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['SIP_DEFAULTHOST_SECURE']</code></td>
    <td>was standalone_profiles profiles ports SIP_DEFAULTHOST_SECURE</td>
    <td><code>5061</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['SOAP_CONNECTOR_ADDRESS']</code></td>
    <td>was standalone_profiles profiles ports SOAP_CONNECTOR_ADDRESS</td>
    <td><code>8880</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['WC_adminhost']</code></td>
    <td>was standalone_profiles profiles ports WC_adminhost</td>
    <td><code>9060</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['WC_adminhost_secure']</code></td>
    <td>was standalone_profiles profiles ports WC_adminhost_secure</td>
    <td><code>9043</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['WC_defaulthost']</code></td>
    <td>was standalone_profiles profiles ports WC_defaulthost</td>
    <td><code>9080</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['ports']['WC_defaulthost_secure']</code></td>
    <td>was standalone_profiles profiles ports WC_defaulthost_secure</td>
    <td><code>9443</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['profile']</code></td>
    <td>was standalone_profiles profiles profile</td>
    <td><code>AppSrv01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['server']</code></td>
    <td>was standalone_profiles profiles server</td>
    <td><code>standalone01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['signingcertdn']</code></td>
    <td>was standalone_profiles profiles signingcertdn</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['profiles']['standalone_profiles']['standalone1']['signingcertvalidityperiod']</code></td>
    <td>was standalone_profiles profiles signingcertvalidityperiod</td>
    <td><code>15</code></td>
  </tr>
  <tr>
    <td><code>node['was']['security']['admin_user']</code></td>
    <td>was administrative user</td>
    <td><code>wasadmin</code></td>
  </tr>
  <tr>
    <td><code>node['was']['security']['admin_user_pwd']</code></td>
    <td>was administrative password</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['unmanaged_node']['unmngNode01']['host_name']</code></td>
    <td>was unmanaged_node host_name</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['unmanaged_node']['unmngNode01']['node_name']</code></td>
    <td>was unmanaged_node node_name</td>
    <td><code>{SHORTHOSTNAME}UnmangedNode01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['unmanaged_node']['unmngNode01']['os']</code></td>
    <td>was unmanaged_node os</td>
    <td><code>linux</code></td>
  </tr>
  <tr>
    <td><code>node['was']['version']</code></td>
    <td>WAS_Version</td>
    <td><code>9.0.0.2</code></td>
  </tr>
  <tr>
    <td><code>node['was']['webserver']['ihs_server']['admin_port']</code></td>
    <td>was webserver ihs_server admin_port</td>
    <td><code>8008</code></td>
  </tr>
  <tr>
    <td><code>node['was']['webserver']['ihs_server']['ihs_admin_password']</code></td>
    <td>was webserver ihs_server ihs_admin_password</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['webserver']['ihs_server']['ihs_admin_user']</code></td>
    <td>was webserver ihs_server ihs_admin_user</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['webserver']['ihs_server']['install_dir']</code></td>
    <td>was webserver ihs_server install_dir</td>
    <td><code>/opt/IBM/HTTPServer</code></td>
  </tr>
  <tr>
    <td><code>node['was']['webserver']['ihs_server']['node_name']</code></td>
    <td>was webserver ihs_server node_name</td>
    <td><code>{SHORTHOSTNAME}UnmangedNode01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['webserver']['ihs_server']['plugin_dir']</code></td>
    <td>was webserver ihs_server plugin_dir</td>
    <td><code>/opt/IBM/WebSphere/Plugins</code></td>
  </tr>
  <tr>
    <td><code>node['was']['webserver']['ihs_server']['webapp_mapping']</code></td>
    <td>was webserver ihs_server webapp_mapping</td>
    <td><code>ALL</code></td>
  </tr>
  <tr>
    <td><code>node['was']['webserver']['ihs_server']['webserver_name']</code></td>
    <td>was webserver ihs_server webserver_name</td>
    <td><code>webserver1</code></td>
  </tr>
  <tr>
    <td><code>node['was']['webserver']['ihs_server']['webserver_port']</code></td>
    <td>was webserver ihs_server webserver_port</td>
    <td><code>80</code></td>
  </tr>
  <tr>
    <td><code>node['was']['webserver']['ihs_server']['webserver_type']</code></td>
    <td>was webserver ihs_server webserver_type</td>
    <td><code>IHS</code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['clusters']['cluster01']['cluster_name']</code></td>
    <td>was clusters cluster_name</td>
    <td><code>cluster01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['clusters']['cluster01']['cluster_servers']['cluster_server01']['server_name']</code></td>
    <td>was cluster_servers server_name</td>
    <td><code>server01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['clusters']['cluster01']['session_rep']</code></td>
    <td>was wsadmin clusters cluster01 session_rep</td>
    <td><code>true </code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['dmgr']['jvmproperty']['node_name']</code></td>
    <td>was wsadmin dmgr jvmproperty node_name</td>
    <td><code>{SHORTHOSTNAME}CellManager01</code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['dmgr']['jvmproperty']['profile_path']</code></td>
    <td>was wsadmin dmgr jvmproperty profile_path</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['dmgr']['jvmproperty']['property_value_initial']</code></td>
    <td>was wsadmin dmgr jvmproperty property_value_initial</td>
    <td><code>256</code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['dmgr']['jvmproperty']['property_value_maximum']</code></td>
    <td>was wsadmin dmgr jvmproperty property_value_maximum</td>
    <td><code>512</code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['dmgr']['jvmproperty']['server_name']</code></td>
    <td>was wsadmin dmgr jvmproperty server_name</td>
    <td><code>dmgr</code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['nodeagent']['jvmproperty']['node_name']</code></td>
    <td>was wsadmin nodeagent jvmproperty node_name</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['nodeagent']['jvmproperty']['profile_path']</code></td>
    <td>was wsadmin nodeagent jvmproperty profile_path</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['nodeagent']['jvmproperty']['property_value_initial']</code></td>
    <td>was wsadmin nodeagent jvmproperty property_value_initial</td>
    <td><code>256</code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['nodeagent']['jvmproperty']['property_value_maximum']</code></td>
    <td>was wsadmin nodeagent jvmproperty property_value_maximum</td>
    <td><code>512</code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['nodeagent']['jvmproperty']['server_name']</code></td>
    <td>was wsadmin nodeagent jvmproperty server_name</td>
    <td><code>nodeagent</code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['standalone']['jvmproperty']['node_name']</code></td>
    <td>was wsadmin standalone jvmproperty node_name</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['standalone']['jvmproperty']['profile_path']</code></td>
    <td>was wsadmin standalone jvmproperty profile_path</td>
    <td><code></code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['standalone']['jvmproperty']['property_value_initial']</code></td>
    <td>was wsadmin standalone jvmproperty property_value_initial</td>
    <td><code>256</code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['standalone']['jvmproperty']['property_value_maximum']</code></td>
    <td>was wsadmin standalone jvmproperty property_value_maximum</td>
    <td><code>512</code></td>
  </tr>
  <tr>
    <td><code>node['was']['wsadmin']['standalone']['jvmproperty']['server_name']</code></td>
    <td>was wsadmin standalone jvmproperty server_name</td>
    <td><code></code></td>
  </tr>
</table>

Recipes
-------

### was::cleanup.rb


Cleanup Post WebSphere Install


### was::configure_dmgr.rb


Configure Deployment Manager like set the JVM HeapSize min / max etc


### was::configure_nodeagent.rb


Configure Node agent like set the JVM HeapSize min / max etc


### was::configure_standalone.rb


Configure Websphere standalone server like set the JVM HeapSize min / max etc


### was::create_cluster.rb


Create Websphere clusters


### was::create_clustermember.rb


Create Websphere cluster members/servers


### was::create_dmgr.rb


Create WebSphere Deployment Manager


### was::create_job_manager.rb


Create WebSphere Job Manager


### was::create_managed.rb


Create node agent, manage node profile, start the node agent


### was::create_standalone.rb


Create Websphere standalone server


### was::gather_evidence.rb


Gather evidence that installation was successful


### was::install.rb


Install WebSphere Application Server


### was::prereq.rb


This recipe will add to the environment the necessary Pre-Requisites to be added prior ro WebSphere Instalation, this will include
Adding users, Packages, Kernel Configuration


### was::prereq_check.rb


This recipe will check the environment prior to installing software.


### was::start_clustermember.rb


Start the Websphere cluster members/application servers


### was::unmanaged_webserver.rb


Create unmanaged node, create and configure webserver



License and Author
------------------

Author:: IBM Corp (<>)

Copyright:: 2017, IBM Corp

License:: Copyright IBM Corp. 2016, 2017

