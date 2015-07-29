class httpconf {
  include apache::default_mods
  include apache::custom_config
  include httpconf::config
}
