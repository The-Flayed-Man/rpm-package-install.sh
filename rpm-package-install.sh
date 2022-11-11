#!/bin/bash
   echo "Enter the package you want to install:"
   read h
   rpm -qa | grep $h
   if [ $? != 0 ]
   then
   sleep 2
   sudo dnf install $h
   sleep 2
   rpm -qa | grep $h
   if [ $? != 0 ]
   then    
   echo "The $h package is not installed"
   else
   echo "The $h package is installed"
   fi
   fi
