define tomcat::deploy( 
  $deploy_path = $::tomcat::deploy_path,
  $deploy_url,
  $checksum = 'md5',
  $checksum_value,
 )
 {
  file {"$deploy_path/${name}.war":
    ensure         => present,
    owner          => $::tomcat::user,
    group          => $::tomcat::group,
    source         => $deploy_url,
    checksum       => $checksum,
    checksum_value => $checksum_value,
    notify => Exec[purge_content],
   }
   exec {"purge_content":
     path          => ['/bin','/usr/bin/'],
     command       => "rm -rf $deploy_path/${name}.war",
     refreshonly   => true,
     notify        => Service[$::tomcat::service_name],
     }
 }
