class sphinxsearchdocker ($docker_image_sphinx = 'jekakm/sphinx') {
  class {'sphinxsearchdocker::prepare':
    docker_image_sphinx => $docker_image_sphinx
  }
}
