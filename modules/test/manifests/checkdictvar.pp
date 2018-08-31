class test::checkdictvar {

  notice("Hello")
	
	$x = "Welcome to Puppet"
	$y = hiera("key")
	
	$z = hiera("array")
	$d=hiera("installproperties")
	
	$checkvar ="key1"
	
	# file{'C:\test.txt':
		# ensure => present,
		# content => "${x} ${facts['ruby']['sitedir']}"
	# }
	
	#notify{"${y} ${z} ${d}":}
	# file{'C:\index.html':
		# ensure => present,
		# content => template("test/index.html.erb")
	# }
	
	if("ecb-config-svc" in $d['jars']){
		notify{"true":}
	}
	else{
		notify{"false":}
	}
}
# include test::checkdictvar

#https://puppet.com/docs/puppet/5.4/lang_iteration.html