include chocolatey
class test::installgit{
	package { 'notepadplusplus':
		ensure => installed,
		provider => 'chocolatey',
  }
}