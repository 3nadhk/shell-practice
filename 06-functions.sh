#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run the script with root access"
    exit 1 #Give other than 0 up to 127
else    
    echo "You are running with root access"
fi
    VALIDATE(){

        if [ $1 -eq 0 ]
then 
         echo "Installing $2 is ... SUCCESS"
else
         echo "Installing $2 is ... FAILED"
    exit 1
fi   
    }
 
dnf list installed mysql


if [ $? -ne 0 ]
then
    echo "MY SQL is not installed -- going to install it"
    dnf install mysql -y
    VALIDATE $? "MYSQL"
else
    echo "MY SQL is already installed ...Nothing to do"
    
fi
    

dnf list installed python3

if [ $? -ne 0 ]
then
    echo "python3 is not installed -- going to install it"
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo "python3 is already installed ...Nothing to do"
    
fi

dnf list  installed nginx

if [ $? -ne 0 ]
then
    echo "nginx is not installed -- going to install it"
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo "nginx is already installed ...Nothing to do"
    
fi
