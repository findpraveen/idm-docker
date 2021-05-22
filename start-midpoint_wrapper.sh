#!/bin/bash

if [ "$MP_SCALE_MODE" == "on" ]; then
  
  export MP_JAVA_OPTS="$MP_JAVA_OPTS -Dmidpoint.nodeId=$HOSTNAME";

  export MP_JAVA_OPTS="$MP_JAVA_OPTS -Dmidpoint.taskManager.clustered=true";
fi

bash -c /usr/local/bin/startup.sh