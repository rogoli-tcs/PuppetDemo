class test::notepadpp {

  notice("Hello")
	
	$x = "Welcome to Puppet"
	
	file{'C:\test.txt':
		ensure => present,
		content => "${x} ${facts['ruby']['sitedir']}"
	}
	
	file{'C:\index.html':
		ensure => present,
		content => template("test/index.html.erb")
	}
}
# include test::notepadpp