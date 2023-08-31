#!/bin/bash
# $RANDOM
number=$RANDOM
head -c $number /dev/urandom > rnd.txt
exit 0