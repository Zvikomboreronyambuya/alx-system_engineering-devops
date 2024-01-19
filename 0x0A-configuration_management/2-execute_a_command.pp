# Using Puppet, create a manifest that kills a process named killmenow, must use pkill and exec

exec { 'pkill -f killmenow':
  path => '/usr/bin/:/usr/local/bin/:/bin/'
}
