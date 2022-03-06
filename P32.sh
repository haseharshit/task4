#!/bin/bash

echo "Enter the file path"
read VAR

length=$(echo -n "$str" | wc -c)
extend="_comment_removed.sh"
FILE="${VAR:0:$(($length-3))}$extend"

echo "Find the file after removing comment here:"
echo "$FILE"
grep -A1 '^[^#]*' $file > $FILE

