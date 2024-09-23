#!/bin/bash

USERID=$(id -u) #Declaring the userid
TIMESTAMP=$(date +%F-%H-%M-%S) #Declaring the time format
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log #Declaring the logs to store in tmp directory
#Declaring Colours to print the message
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#delacarling validation function
VALIDATE(){
   if [ $1 -ne 0 ]
   then
        echo -e "$2...$R FAILURE $N"
        exit 1
    else
        echo -e "$2...$G SUCCESS $N"
    fi
}

#to check where you have root access or not
if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

#Refering the loops 
for i in $@
do
    echo "package to install: $i"
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then
        echo -e "$i already installed...$Y SKIPPING $N"
    else
        dnf install $i -y &>>$LOGFILE
        VALIDATE $? "Installation of $i"
    fi
done