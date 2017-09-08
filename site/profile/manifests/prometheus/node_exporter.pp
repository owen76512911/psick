# class profile::prometheus::node_exporter
class profile::prometheus::node_exporter {
  class { '::prometheus::node_exporter':
    manage_user    => true,
    manage_group   => true,
    user           => 'prometheus',
    group          => 'prometheus',
    version        => '0.14.0',
    bin_dir        => '/opt/prometheus/node_exporter-0.14.0.linux-amd64',
    install_method => 'package',
    package_name   => 'prometheus-node-exporter',
    package_ensure => present,
  }
  @@file { "/etc/prometheus/files.d/${::facts['networking']['fqdn']}.json":
    ensure  => file,
    content => epp('profile/prometheus/prometheus_node_export.json.epp'),
  }
}

