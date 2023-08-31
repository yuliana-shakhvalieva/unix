#!/bin/bash
read -p "Enter a number: " var
if [[ $((var % 2)) -eq 0 ]];
        then
                echo "EVEN"
        else
                echo "ODD"
fi
exit 0