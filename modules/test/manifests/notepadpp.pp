class test::notepadpp {

  notice("Hello")
	
	$x = "Welcome to Puppet"
	$y = hiera("key")
	
	$z = hiera("array")
	$d=hiera("dict")
	
	file{'C:\test.txt':
		ensure => present,
		content => "${x} ${facts['ruby']['sitedir']}"
	}
	
	notify{"${y} ${z} ${d}":}
	file{'C:\index.html':
		ensure => present,
		content => template("test/index.html.erb")
	}
}
# include test::notepadpp

#https://puppet.com/docs/puppet/5.4/lang_iteration.html