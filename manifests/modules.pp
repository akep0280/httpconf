class httpconf::modules {

  class { 'apache':
  default_mods        => false,
  default_confd_files => false,
  mpm_module          => 'prefork',
  }

  class {'apache::mod::headers':
  }
  class {'apache::mod::ssl':
  }
  class {'apache::mod::auth_basic':
  }
  class {'apache::mod::include':
  }
  class {'apache::mod::setenvif':
  }
  class {'apache::mod::mime_magic':
  }
  class {'apache::mod::mime':
  }
  class {'apache::mod::expires':
  }
  class {'apache::mod::deflate':
  }
  class {'apache::mod::vhost_alias':
  }
  class {'apache::mod::rewrite':
  }
  class {'apache::mod::cache':
  }
  class {'apache::mod::disk_cache':
  }
  class {'apache::mod::cgi':
  }
  class {'apache::mod::negotiation':
  }
  class {'apache::mod::dir':
  }

}
