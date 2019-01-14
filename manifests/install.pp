class tomcat::install inherits tomcat {
  package {"$::tomcat::package1":
   ensure => installed,
   }
  package {"$::tomcat::package2":
   ensure => installed,
   }
}
  
