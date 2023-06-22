#!/bin/bash
        echo "---script to create linux users---"
        read -p " how many users: " user_ct 

function _meow_create_user { 
        read -p " enter username " username 
        read -sp " enter password " password
        useradd $username -p $password -c "User created through script"

    echo $(id $username | awk -F " " '{print $1 }')
}

if [ $user_ct -gt 1 ]; then 
        echo "creating multi-users"
for user in $(seq 1 $user_ct); do 
        read -p " enter username " username 
        read -sp " enter password " password
        useradd $username -p $password -c "User created through script"
done 


elif [ $user_ct -eq 1 ]; then 
        echo " creating single user "
        _meow_create_user
        done 

else 
        echo " Wrong input. Try again " 
fi 
