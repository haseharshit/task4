#!/bin/bash

echo -n "Enter the source: "
read SOURCE
echo -n "Enter the destination: "
read DEST

if [ -f $SOURCE ]
then
     if [ -f $DEST ]
     then
          n=$(wc -l < $DEST)
          if [ $n -ne 0 ]
          then
               echo -n "Overwrite $DEST ? (y/n): "
               read ch
               if [ $ch == 'y' ]
               then
                   cp $SOURCE $DEST
               else
                   exit
               fi
          fi
     else
         cp $SOURCE $DEST
     fi
else
    echo "$SOURCE file does not exist"
fi
