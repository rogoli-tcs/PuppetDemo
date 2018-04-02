
 include chocolatey 
 
class test::chocolatey{

	package { 'mysql':
		ensure => installed,
		#provider => 'chocolatey'
  }
  
  
  # # package { 'notepadplusplus':
  # ensure            => installed,
  # provider          => 'chocolatey',
  # install_options   => ['-pre','-params','"','param1','param2','"'],
  # uninstall_options => ['-r'],
  # source            => 'https://myfeed.example.com/api/v2',
}

