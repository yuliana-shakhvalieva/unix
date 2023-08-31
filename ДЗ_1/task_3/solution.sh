#!/bin/bash
find -name '*.txt' -mtime -1 ! -mmin -30 -print | wc -l
exit 0