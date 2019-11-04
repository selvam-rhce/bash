#!/bin/bash

CURRENT_USER=`whoami`
read -esp "Password for ${CURRENT_USER}:" AUTH
echo $AUTH | su ${CURRENT_USER} -c "exit" &> /dev/null
if [ $? == 0 ];then
	echo -e "\nAuthendication successfull"
else
	echo -e "\nAuthendication failed !!!"
fi

