#!/bin/bash
while getopts ":i:o:" o; do
        case "${o}" in
                i) src_dir="${OPTARG}"
                ;;
                o) dst_dir="${OPTARG}"
                ;;
                :) echo "ERROR: Option -$OPTARG requires an argument"
                        exit 1
                ;;
                \?) echo "ERROR: Invalid option -$OPTARG"
                        exit 1
                ;;
        esac
done

if [ -z "$src_dir" ]; then
        echo "ERROR: Option -i is required"
        exit 1
fi

if [ -z "$dst_dir" ]; then
        echo "ERROR: Option -o is required"
        exit 1
fi

find "$src_dir" -type f -executable -exec cp "{}" "$dst_dir" \;
exit 0