node /^www.*$/ {
  class { "stdlib": }

  package { "git": ensure => present, }

  service { "iptables": ensure => stopped, }

  class { 'nginx': }

  nginx::server_block { 'exercise-webpage':
    listen => '8080',
    root   => '/var/www/exercise-webpage',
  }

  vcsrepo { '/var/www/exercise-webpage':
    ensure   => latest,
    provider => git,
    source   => 'https://github.com/puppetlabs/exercise-webpage',
    require  => [
      Package['git'],
      Nginx::Server_block['exercise-webpage'],
    ],
  }
}
