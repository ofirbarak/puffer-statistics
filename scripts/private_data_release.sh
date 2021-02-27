#!/bin/bash -ue 
# Assumes puffer-statistics and local data live in ~
cd /home/ofir/puffer-statistics/scripts
source ./export_constants.sh /home/ofir yesterday
echo "sourced"
./private_entrance.sh 
echo "finished private"
./public_entrance.sh 
echo "finished public"
# ./upload_public_results.sh 
# echo "finished upload"
