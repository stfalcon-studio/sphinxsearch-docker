define sphinxsearchdocker::sphinxsearch(
  $sphinx_container_name,
  $sphinx_container_port
  ){
  file { "sphinxsearch-docker-$sphinx_container_name":
    ensure  => file,
    path    => "/etc/supervisor/conf.d/docker-sphinx-${sphinx_container_name}.conf",
    content => template('sphinxsearchdocker/supervisor-docker.erb'),
    notify  => Service['supervisor']
  }
}
