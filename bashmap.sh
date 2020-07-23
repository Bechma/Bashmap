#!/bin/bash

if [[ "$#" -ne 1 ]]; then
  echo "bashmap.sh <IP>"
  exit
fi

for port in {1..65535}
do
  nc -vnz $1 $port &> /dev/null && echo "OPEN $1 $port" &
done
