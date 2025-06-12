#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run the script with root access"
    exit 1 #Give other than 0 up to 127
else    
    echo "You are running with root access"
fi
dnf install mysql -y
if [ $? -eq 0 ]
then 
    echo "Installing MYSQL is ... SUCCESS"
else
    echo "Installing MYSQL is ... FAILED"
    exit 1
fi   