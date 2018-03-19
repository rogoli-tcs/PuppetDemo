class test::noptepadpp{
	file{"D:/nppInstaller.exe":
		ensure => present,
		source => "C:/npp.7.3.1.Installer.exe"
	}
}