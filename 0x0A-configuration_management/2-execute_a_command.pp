#This code kills a prcoess and works with the killmenow file provide
exec { 'killmenow':
  command  => 'usr/bin/pkill killmenow',
  provider => 'shell',
  returns  => [0, 1],
}

