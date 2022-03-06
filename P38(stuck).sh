#!/bin/bash

echo "Enter File"
read file

find -L / -samefile $file

#ls -l | grep "^|.* $file" | cut -d "" -f12
