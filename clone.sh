#!/bin/bash
echo -n "Enter url > "
read clone_url

git clone $clone_url
echo "*********************"
echo "Clone Complete"
echo "*********************"


