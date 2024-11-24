#!/bin/sh
for i in "${1}"/*
do
    name="$(echo "${i}" | rev | cut -d"." -f1 | rev)"
    
    if which "${name}" > /dev/null
    then
        cmd=$(mv "${i}" /etc/apparmor.d/.)
        echo "${cmd}"
    fi


done
