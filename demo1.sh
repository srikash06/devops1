#!/bin/bash

cd /home/ubuntu/srikash
mkdir -p demo1
cd demo1
mkdir -p one two three

cd one
echo "one is generated" > one   # overwrite file with new content
echo "1 is done"

cd ../two
echo "two is generated" > two   # overwrite file with new content
echo "2 is done"

cd ../three
echo "three is generated" > three   # overwrite file with new content
echo "3 is done"

