class httpconf::config {
  include stdlib

  file {'/etc/httpd/conf.d/nasba_cis.conf':
    ensure   => 'file',
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
    source   => 'puppet:///modules/httpconf/nasba_cis.conf',
    notify   => Service["httpd"],
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

  file { '/etc/httpd/vhosts.d':
    ensure  => 'directory',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    require => Package['httpd'],
  }

  file_line { 'Indexes_disable_15-default':
    path  => '/etc/httpd/conf.d/15-default.conf',
    line  => '    Options -Indexes FollowSymLinks MultiViews',
    match => '^    Options Indexes FollowSymLinks MultiViews',
    notify => Service["httpd"],
  }

  file_line { 'Indexes_disable_alias':
    path  => '/etc/httpd/conf.d/alias.conf',
    line  => '    Options -Indexes MultiViews',
    match => '^    Options Indexes MultiViews',
    notify => Service["httpd"],
  }
}
