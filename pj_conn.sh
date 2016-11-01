#!/bin/bash

function create_dir_if_not_exists {
    if [ -d "$1" ];
    then
        echo "Directory $1 exists."
    else
        mkdir -v $1
    fi
}

if [ "$1" = "mount" ];
then
    cd ~
    create_dir_if_not_exists pjwstk_vpn
    cd pjwstk_vpn
    create_dir_if_not_exists user
    create_dir_if_not_exists public

    sudo mount.cifs //win-zet.pjwstk.edu.pl/public public/ -o user=$2,pass=$3
    sudo mount.cifs //win-zet.pjwstk.edu.pl/Users/s15029 user/ -o user=$2,pass=$3
elif [ "$1" = "umount" ];
then
    sudo umount ~/pjwstk_vpn/public/
    sudo umount ~/pjwstk_vpn/user/
else
    echo "Unknown command: '$1'." "Allowed commands [mount, umount]."
fi
