class apache{
  include apache
  include apache::default_mods
}

class httpconf {
  include httpconf::config
}
