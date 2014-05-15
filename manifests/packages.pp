class etherpad::packages {

  include apt
  apt::ppa { 'ppa:chris-lea/node.js': } ->
  package { "nodejs":
    ensure => installed,
  }
  apt::source { 'etherpad-lite':
    location    => 'http://apt.akendo.eu/etherpad',
    repos       => 'main',
    key         => '3E43106D',
    key_server  => 'pgp.mit.edu',
    include_src => false
  }

  if !defined(Package['gzip']) {
    package { 'gzip':
      ensure   => installed
    }
  }
  if !defined(Package['git-core']) {
    package { 'git-core':
      ensure   => installed
    }
  }
  if !defined(Package['curl']) {
    package { 'curl':
      ensure   => installed
    }
  }
  if !defined(Package['libssl-dev']) {
    package { 'libssl-dev':
      ensure   => installed
    }
  }
  if !defined(Package['pkg-config']) {
    package { 'pkg-config':
      ensure   => installed
    }
  }
  if !defined(Package['build-essential']) {
    package { 'build-essential':
      ensure   => installed
    }
  }

  if $etherpad::etherpad_abiword and !defined(Package['abiword']) {
    package { 'abiword':
      ensure => installed,
    }
  }
}
