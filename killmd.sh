#!/bin/sh
echo -n "runing"
while true; do
    ps -ef|grep mdsync|grep -v grep
    if [ $? -ne 0 ]
    then
        sleep 1
    else
        sudo pkill -f mdsync
        sudo pkill -f bluetoothd
        sudo pkill -f AddressBookS
        echo "killed mdsync"
        sleep 1
    fi
done