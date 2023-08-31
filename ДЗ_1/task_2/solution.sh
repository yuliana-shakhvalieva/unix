#!/bin/bash
cat digits.txt | cut -d ';' -f 3 | paste -sd+ | bc
exit 0