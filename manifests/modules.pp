class httpconf::modules {
  class {'apache::mod::headers':
  }
  class {'apache::mod::ssl':
  }
}
