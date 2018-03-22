class test::serv{
# exec{"start the server":
	# command => "cmd.exe /c net start AJRouter",
	# path => "C:/Windows/System32"
# }
service{"start the server":
	name => "AJRouter",
	ensure =>true
}
}