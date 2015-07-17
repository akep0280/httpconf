class httpconf::config {




file_line {'NameVirtualHost':
  path => '/etc/httpd/conf/httpd.conf',
  line => 'NameVirtualHost *:443',
}

file_line {'RewriteEngine':
  path => '/etc/httpd/conf/httpd.conf',
  line => 'RewriteEngine On',
}

file_line {'RewriteCond1':
  path => '/etc/httpd/conf/httpd.conf',
  line => 'RewriteCond %{THE_REQUEST} !HTTP/1\.1$',
}

file_line {'RewriteRule1':
  path => '/etc/httpd/conf/httpd.conf',
  line => 'RewriteRule .* - [F]',
}

file_line {'FileMatch':
  path => '/etc/httpd/conf/httpd.conf',
  line => '        <FilesMatch "^\.ht">',
}

file_line {'Order':
  path => '/etc/httpd/conf/httpd.conf',
  line => '        Order allow,deny',
}

file_line {'Deny':
  path => '/etc/httpd/conf/httpd.conf',
  line => '        Deny from all',
}

file_line {'Satisfy':
  path => '/etc/httpd/conf/httpd.conf',
  line => '        Satisfy All',
}

file_line {'FileMatchend':
  path => '/etc/httpd/conf/httpd.conf',
  line => '        </FilesMatch>',
}

file_line {'Header':
  path => '/etc/httpd/conf/httpd.conf',
  line => 'Header always append X-Frame-Options SAMEORIGIN',
}

file_line {'SSLInsecureRenegotiation':
  path => '/etc/httpd/conf/httpd.conf',
  line => 'SSLInsecureRenegotiation off',
}

file_line {'TraceEnable':
  path => '/etc/httpd/conf/httpd.conf',
  line => 'TraceEnable off',
}

file_line {'FileETag':
  path => '/etc/httpd/conf/httpd.conf',
  line => 'FileETag None',
}

file_line {'CoreDumpDirectory':
  path => '/etc/httpd/conf/httpd.conf',
  line => 'CoreDumpDirectory /var/log/httpd',
}

file_line {'GeoIPEnable':
  path => '/etc/httpd/conf/httpd.conf',
  line => 'GeoIPEnable On',
}

file {'/etc/httpd/vhosts.d':
  ensure => "directory",
}

file_line {'includevhost':
  path => '/etc/httpd/conf/httpd.conf',
  line => 'include /etc/httpd/vhosts.d/*.conf',
}


}
