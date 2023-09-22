#This code kills a prcoess and works with the killmenow file provide
exec { 'killmenow':
  command     => 'pkill -f killmenow',
  path        => '/bin:/usr/bin',
  refreshonly => true,
}

