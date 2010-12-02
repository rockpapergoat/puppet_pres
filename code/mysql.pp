# Class: mysql
# 100825
#
class mysql {
	package { 'mysql':
		ensure => installed,
	}
	package { 'mysql-server':
		ensure => absent,
		require => Service['mysqld'],
	}
	service	{ 'mysqld':
		ensure => stopped,
	}
}

class mysql::server inherits mysql {
  Package['mysql-server'] {
	ensure => 'installed',
	require => undef,
	}
  Service['mysqld'] {
	require => Package['mysql-server'],
	ensure => 'running',
	enable => true,
	}
  notice ("installed mysqld")
}