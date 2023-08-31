#!/bin/bash
read -r -p "Enter name of input file: " input
read -r -p "Enter name of output file: " output
> $output

while IFS= read -r el; do
        num=$el
        result="$el: "
        for (( i=2; i<=$el; i++ )); do
                while [ $((num%$i)) == 0 ]; do

                        result="$result$i "
                        num=$((num/$i))
                done
        done
        echo $result >> $output
done < $input
exit 0