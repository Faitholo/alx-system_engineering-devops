# fix our stack so that we get to 0 errors
exec { 'file limit':
  onlyif   => 'test -e /etc/default/nginx',
  command  => 'sed -i "5s/[0-9]\+/$( ulimit -n )/" /etc/default/nginx; service nginx restart',
  provider => shell,
}
