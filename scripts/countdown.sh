#!/bin/sh

now=$(date +%s)
future=$(date -d "2021-08-24 19:00:00" +"%s")
tdiff=$(( future - now ))
hours=$(($tdiff/3600))
minutes=$(($tdiff%3600/60))
echo "$hours:$minutes"
