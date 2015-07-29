class httpconf::modules {
  class { 'apache::default_mods':
    apache::mod {'headers':}
}
  
