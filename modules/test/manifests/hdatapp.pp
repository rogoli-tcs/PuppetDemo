class test::hdatapp{
  notice("hii")
  
    # $path=hiera("path")
	# $jars=hiera("jars")
	# $version=hiera("version")
	
	
	 # package {"java" : 
     # ensure => installed, 
     # provider => "windows", 
     # source => "C:/Users/Administrator.QA-PRADEEP/Downloads/jdk-8u161-windows-x64.exe", 
	 # install_options => [ '/s', { 'INSTALLDIR' => ' C:\Program Files\java\jdk1.8.0 ' } ],
	 # }
	# exec{"setting java home":
	    # command => 'cmd.exe /c "PATH = %PATH%;C:\\Program Files\\Java\\jdk1.8.0\\bin"',
		# #command => 'powershell.exe "&{$path=C:\\Program Files\\Java\\jdk1.8.0\\bin}',
	    # #path => "C:\\Windows\\System32\\",
		# provider => 'powershell',
	    # #require => Package["java"],
# }
     # notify {"The new path is {PATH} ":
       # withpath => true,
      # require => Exec['setting java home']
# }
	 
	 windows_env {'Path=C:\\Program Files\\Java\\jdk1.8.0\\bin':
	     #type => REG_EXPAND_SZ,
         #ensure    => 'C:\JDK',
          mergemode => append, 
		 #require => Package["java"],		
}

 package {'vlc':
  ensure   => installed,
  provider => 'chocolatey',
}
}	 
	 
	
# file{"C:/Users/Administrator.QA-PRADEEP/Desktop/jarDownload1":
	# ensure => directory,
# }

# # $binaries = ['facter', 'hiera', 'mco', 'puppet', 'puppetserver']

# # # function call with lambda:
# # $jars.each |String $binary| {
  # # notify{"hello${binary}":}
# # }

 # $jars.each |String $jar|{
 # notify{"hello${jar}":}
 # file{"C:/Users/Administrator.QA-PRADEEP/Desktop/jarDownload1/${jar}":
	# ensure => present,
	# source => "${path}/${jar}",
# }
# }
# file{'C:\index.html':
		# ensure => present,
		# content => template("test/index.html.erb")
	# }
	
	notice("pradeep")
	
	 
	
# package {"C:/Program Files":
	# name => 'oracle-java${version}-installer',
    # ensure  => installed,
# }
# exec{"setting java home":
	# command => "cmd.exe /c setx JAVA_HOME C:/Program Files/Java/jdk${version}",
	# path => "C:/Windows/System32",
	# require => Package["C:/Program Files"],
# }
