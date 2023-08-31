#!/bin/bash
echo "Size before: "
size=$(stat -c%s data)
echo $size
dd if=data of=data bs=1 count=$size oflag=append conv=notrunc
echo "Size after: "
wc -c data
exit 0