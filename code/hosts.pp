host { 'localhost.localdomain':
    ensure => 'present',
    target => '/etc/hosts',
    ip => '127.0.0.1',
    host_aliases => ['localhost']
}
host { 'localhost6.localdomain6':
    ensure => 'present',
    target => '/etc/hosts',
    ip => '::1',
    host_aliases => ['localhost6']
}
host { 'training.puppetlabs.org':
    ensure => 'present',
    ip => '10.11.10.90',
    target => '/etc/hosts'
}

resources {'host':
    purge => true,
}
