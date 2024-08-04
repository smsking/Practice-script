#!/bin/bash

USERID=$(id -u)

if [ $USERID ne 0 ]
then
    echo "Run the Script with Root user"
    exit 1 #Manually exit if error comes.
else
    echo "Your super user."
fi

#installing mysql

dnf install mysql -y

if [ $? ne 0 ]
then
    echo "MySQL installation is .....Failure"
    exit 1
else
    echo "MySQL installation is .....SUCCESS"
fi

#installing git

dnf install git -y

if [ $? ne 0 ]
then
    echo "Git installation is .....Failure"
    exit 1
else
    echo "Git installation is .....SUCCESS"
fi

echo "is script Running?" 


