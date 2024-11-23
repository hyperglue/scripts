#!/bin/busybox sh

for i in $(/bin/busybox --list-full)
do 
    /bin/busybox unlink /"${i}"
done

/bin/busybox --install
