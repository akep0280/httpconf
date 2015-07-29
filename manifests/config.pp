class httpconf::config {
  include apache

  apache::custom_config { 'nasba_cis.conf':
    ensure => present,
    source => 'puppet:///modules/httpconf/nasba_cis.conf',
  }

  }
