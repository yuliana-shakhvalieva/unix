#!/bin/bash
len=$(cat input.txt | wc -l)

for (( i=1; i <= $(( $len - 1 )); i++ ))
do
        a=$(( $i + 1))
        curr_color=$(awk -F";" '{print $5}' input.txt | head -$a | tail -1)
        count=$(awk -F";" -v color="$curr_color" -v k="$i" '($5==color && $1<k) {count++ } END { print count }' input.txt)
        if [ $((count%2)) != 0 ]
        then
                awk -F";" '{ printf "%-15s %.4f\n", $2, sin($4)/cos($4)}' input.txt | head -$a | tail -1
        fi
done
exit 0