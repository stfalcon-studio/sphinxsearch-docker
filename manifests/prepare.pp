class sphinxsearchdocker::prepare ($docker_image_sphinx){

  package { 'supervisor':
    ensure => installed
  }

  docker::image { $docker_image_sphinx: }

  file { '/etc/docker-sphinx':
    ensure => directory,
    mode   => '0750',
  }

  file { '/var/log/docker-sphinx':
    ensure => directory,
    mode   => '0750',
    owner  => root,
    group  => adm
  }

  service { 'supervisor':
    ensure  => running,
    enable  => true,
    require => Package['supervisor']
  }

}
