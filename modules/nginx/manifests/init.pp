# Class: nginx
#
# This module manages nginx
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class nginx (

  ### install.pp
  $package        = $nginx::params::package,
  $package_ensure = $nginx::params::package_ensure,

  ### config.pp
  $listen         = $nginx::params::listen,

  ### service.pp
  $service        = $nginx::params::service,
  $service_ensure = $nginx::params::service_ensure,
  $service_enable = $nginx::params::service_enable,

)
inherits nginx::params {

  anchor { "nginx::begin": } ->
  class  { "nginx::install": } ->
  class  { "nginx::config": } ->
  anchor { "nginx::end": }

  class  { "nginx::service": }
}
