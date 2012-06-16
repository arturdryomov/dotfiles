# Arch Linux

## Usage: start sshd, status sshd

function start() {
  sudo /etc/rc.d/$1 start
}

function stop() {
  sudo /etc/rc.d/$1 stop
}

function restart() {
  sudo /etc/rc.d/$1 restart
}

function status {
  if [ -f "/var/run/daemons/$1" ]
   then
     sign="\e[1;32m[RUNNING]"
   else
     sign="\e[1;31m[STOPPED]"
   fi

  printf "${sign} \e[1;39m$1\e[0;0m\n"
}
