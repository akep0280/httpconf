class { 'apache':
  include apache::mod::auth_basic
  include apache::mod::include
  include apache::mod::setenvif
  include apache::mod::mime_magic
  include apache::mod::mime
  include apache::mod::expires
  include apache::mod::deflate
  include apache::mod::vhost_alias
  include apache::mod::rewrite
  include apache::mod::cache
  include apache::mod::disk_cache
  include apache::mod::cgi
  include apache::mod::negotiation
  include apache::mod::dir
  default_mods        => false,
  default_confd_files => false,
  mpm_module          => prefork,
  }
