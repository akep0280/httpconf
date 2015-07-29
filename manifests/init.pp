class apache {
  include apache::default_mods
  include apache::custom_config
}

class httpconf {
  include httpconf::config
}
