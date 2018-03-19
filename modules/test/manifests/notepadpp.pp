class test::notepadpp {

  notice("Hello")
	
	$x = "Welcome to Puppet"
	
	file{'C:\test.txt':
		ensure => present,
		content => "${x} ${facts['ruby']['sitedir']}"
	}
	
	# file{'C:\test2.txt':
		# ensure => present,
		# source => "puppet:///modules/test/dummy.txt"
	# }
}
# include test::notepadpp