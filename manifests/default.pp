
exec { "apt-get update":
  path => "/usr/bin",
}

package { "docker.io":
  ensure  => present,
  require => Exec["apt-get update"],
}