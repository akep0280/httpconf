class httpconf::modules {
  class { 'apache::default_mods': }
  class { 'apache::mod {'headers'}
}
}
