#!/bin/bash
read -p "Enter a string: " string
if [[ $(rev <<< "$string") == "$string" ]]; then
        echo "YES"
else
        echo "NO"
fi
exit 0