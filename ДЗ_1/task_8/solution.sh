#!/bin/bash
find . -type f -not -name '*.sh' -mtime -2 ! -mtime -1 -print0 |
        while IFS= read -r -d '' file
        do
                dir=$(dirname $file)
                name=$(basename $file)
                new_name="$dir/_$name"
                mv -v $file $new_name
        done
exit 0