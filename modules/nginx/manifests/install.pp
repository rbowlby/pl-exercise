class nginx::install {
  package { "nginx":
      name   => $::nginx::package,
      ensure => $::nginx::package_ensure,
  }
}
