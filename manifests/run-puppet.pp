# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  source => '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
  mode   => '0755',
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  hour    => '*',
  minute  => '*/1',
}

# Tes working pupet
file { '/tmp/hello.txt':
  ensure => 'present',
}

# Test2 working pupet
file { '/tmp/hello2.txt':
  ensure => 'present',
}

# Test3 working pupet
file { '/tmp/hello3.txt':
  ensure => 'present',
}

# Test4 working pupet
file { '/tmp/hello4.txt':
  ensure => 'present',
}






