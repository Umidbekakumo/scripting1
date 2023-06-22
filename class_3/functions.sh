#!/bin/bash

function _meow_create_user { 
        read -p " enter username " username 
        read -sp " enter password " password
        useradd $username -p $password -c "User created through script"

    echo $(id $username | awk -F " " '{print $1 }')
}

#user_uid=$(_meow_create_user)
#echo $user_uid
