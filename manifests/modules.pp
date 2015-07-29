class httpconf::modules {
  class { 'apache::default_mods':

}
}

class httpconf::modules::headers {
  class {apache::mod {'headers'}
}
}
