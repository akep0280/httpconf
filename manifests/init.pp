class httpconf {
  include httpconf::config
  include httpconf::modules
  include httpconf::modules:headers
}
