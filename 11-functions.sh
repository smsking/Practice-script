#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
#date is a format command "Date +%F"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

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
#&>> is a redirection it saves the command output file if its success or error
VALIDATE $? "installing sql" 

dnf install git -y &>>$LOGFILE
VALIDATE $? "installing git" 

# Redirections
# ----------
# > --> by default only success output will be redirected...
# 1 --> success
# 2 --> Error
# & --> Both success and error
# >> --> append
# there should be no space b/w & and >
# &>> it saves both sucess and error output is redirected to given file(like logfile)



