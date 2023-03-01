#!/bin/bash

#This is a comment
echo "Going to create file using shell script"
read filename

if [ -f $filename ]; 
	then
	 echo "File $filename Already Exist"

else touch $filename 
		 echo " Creating  $filename since it is not Exist in the $PWD "

fi
