class nginx::config {

  $listen = $::nginx::listen

  file { "/etc/nginx/conf.d/default.conf":
    ensure  => file,
    owner   => "root",
    group   => "root",
    mode    => "0644",
    content => template("nginx/default.conf.erb"),
    require => Class["nginx::install"],
  }

}
