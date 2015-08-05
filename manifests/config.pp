class httpconf::config {
  include apache


  file {'/etc/httpd/conf.d/nasba_cis.conf':
    ensure   => 'file',
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
    source   => 'puppet:///modules/httpconf/nasba_cis.conf',
    require  => Package['httpd'],
    }

    file {'/etc/httpd/conf.d/geoip.conf':
      ensure   => 'file',
      owner    => 'root',
      group    => 'root',
      mode     => '0644',
      source   => 'puppet:///modules/httpconf/geoip.conf',
      require  => Package['httpd'],
      }

  package { 'mod_geoip':
    ensure => 'present',
    }
  }
