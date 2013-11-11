class nginx::service {
  service { "nginx":
    name       => $::nginx::service,
    ensure     => $::nginx::service_ensure,
    enable     => $::nginx::service_enable,
    hasstatus  => true,
    hasrestart => true,
    subscribe  => [ Class["nginx::install"], Class["nginx::config"] ],
  }
}
