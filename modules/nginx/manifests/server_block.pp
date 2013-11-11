define nginx::server_block (
  $listen      = 80,
  $server_name = undef,
  $root        = undef,
  $index       = "index.html index.htm",
) {

  file { "/etc/nginx/conf.d/${name}.conf":
    owner   => "root",
    group   => "root",
    mode    => "0644",
    content => template('nginx/server_block.erb'),
    require => Class["nginx::install"],
    notify  => Class["nginx::service"],
  }

}
