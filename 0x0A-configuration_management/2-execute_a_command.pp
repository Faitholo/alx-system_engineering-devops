# Using exec to kill a process named killmenow
exec {'kill-killmenow':
  command => 'pkill killmenow',
  path    => '/usr/bin';
}
