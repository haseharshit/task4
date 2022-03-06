#!/bin/bash

echo -n "Enter the source: "
read source
echo -n "Enter the destination: "
read destination

if [ -f $source ]
then
     if [ -f $destination ]
     then
          n=$(wc -l < $destination)
          if [ $n -ne 0 ]
          then
               echo -n "Overwrite $destination ? (y/n): "
               read ch
               if [ $ch == 'y' ]
               then
                   cp $source $destination
               else
                   exit
               fi
          fi
     else
         cp $source $destination
     fi
else
    echo "$source file does not exist"
fi
