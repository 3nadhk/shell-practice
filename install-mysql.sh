#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run the script with root access"
    exit 1 #Give other than 0 up to 127
else    
    echo "You are running with root access"
if [ $? -ne 0 ]
then
    echo "MY SQL is not installed -- going to install"
    if [ $? -eq 0 ]
then 
    echo "Installing MYSQL is ... SUCCESS"
else
    echo "Installing MYSQL is ... FAILED"
    exit 1
fi   

else 
    echo "MySQL is already installed.. Nothing to do"
    exit 1    
fi
dnf install mysqldddd -y
# if [ $? -eq 0 ]
# then 
#     echo "Installing MYSQL is ... SUCCESS"
# else
#     echo "Installing MYSQL is ... FAILED"
#     exit 1
# fi   