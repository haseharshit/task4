#!/bin/bash

FILES=$HOME
FILES="$FILES/Desktop/"

for FILE in $FILES*.c
do
echo "$FILE"
cc $FILE -o "${FILE:0:$(($length-2))}"
done
echo ""
