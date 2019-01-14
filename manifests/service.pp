class tomcat::service inherits tomcat {
  service {"$::tomcat::service_name":
    ensure => 'running',
    enable => true,
    }
}
