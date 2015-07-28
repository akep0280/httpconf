class httpconf::config {

  class {'apache'}

  file {'/etc/httpd/conf.d/nasba_cis.conf':
    ensure   => 'file',
    owner    => 'root',
    group    => 'root',
    mode     => '0644',
    source   => 'puppet:///modules/httpconf/files/nasba_cis.conf',
    }

  }
