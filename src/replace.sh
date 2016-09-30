#!/bin/sh

if [ ! -f /tmp/filetoreplacein.txt ]; then
  cp ./filetoreplacein.txt /tmp/filetoreplacein.txt
fi


for i in $(seq 1 10)
do
  sed -i "s/PLACEHOLDER/$i/" /tmp/filetoreplacein.txt
  echo -n "."
done

echo " Done."