# Class: nginx::params
#
# This class manages nginx parameters
#
# Parameters:
# - The $package is the name of the nginx package
# - The $package_ensure is the ensure parameter to the nginx package resource.
# - The $service is the nginx init script name.
# - The $service_ensure is the nginx service resource ensure parameter.
# - The $service_enable is the nginx service resource enable parameter.
# - The $listen is the default address for nginx to listen on.
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class nginx::params {

  ### install.pp
  $package = "nginx"
  $package_ensure = present

  ### service.pp
  $service = "nginx"
  $service_ensure = running
  $service_enable = true

  ### config.pp
  $listen = "80"
}
