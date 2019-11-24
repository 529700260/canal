#!/bin/bash
__run() {
  echo -e "123456\n123456" | (passwd)
  /usr/sbin/sshd -D
}

__start() {
  #程序名
  RUN_NAME="$1"
  #jar 位置
  JAVA_OPTS=/var/www/
  source /etc/profile
  bash $JAVA_OPTS/bin/stop.sh
  bash $JAVA_OPTS/bin/startup.sh
  echo "$RUN_NAME start1ed success."
}

# Call all functions
__start $1
__run
