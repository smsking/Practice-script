#!/bin/bash

echo "All variables are: $@"
echo "Number of variables passed: $#"
echo "script name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current working user: $HOME"
echo "Which user is running the script: $USER"
echo "Hostname: $HOSTNAME"
echo "process id of current shell script: $$"
sleep 60 &
echo "Process id of last background command: $!"