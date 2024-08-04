#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="/e[31m"
G="/e[32m"
N="/e[0m"

echo "script started excuting at :$TIMESTAMP"


VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "$2.....Failure" 
    exit 1
else
    echo "$2.....Success" 
fi
}

if [ $USERID -ne 0 ]
then
    echo "Run the Script with Root user"
    exit 1 #Manually exit if error comes.
else
    echo "Your super user."
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "installing sql" 

dnf install git -y &>>$LOGFILE
VALIDATE $? "installing git" 

#Wrong command checking for colour change
dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "installing docker" 

