class apache{
  include apache
}

class httpconf {
  include apache::default_mods
  include httpconf::config
}
