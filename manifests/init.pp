class httpconf {
  include apache
  include httpconf::config
  include httpconf::modules
}
