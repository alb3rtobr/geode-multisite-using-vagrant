#!/bin/bash

end=0

while [ $end -eq 0 ]
do
  echo `date`
  list=$(gfsh -e "connect" -e "set variable --name=APP_RESULT_VIEWER --value=30" -e "list gateways")
  gw_status=$(echo $list | awk '{split($0,tokens,"|"); print tokens[17]}')
  echo "status: $gw_status"
  is_not_connected=$(echo $gw_status | grep "not Connected")
  if [ -n "$is_not_connected" ]
  then
    end=1
  else
    sleep 30
  fi
  echo "-----------------------------"
done

