#!/bin/bash
while IFS= read -r line; do
        if ping -c 1 $line &> /dev/null
        then
                ping -c 1 $line >> res.txt
        else
                ping -c 1 $line >> err.txt
        fi
done < ips.txt
exit 0