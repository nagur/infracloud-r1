#!/bin/bash
##################################
#echo "Author: Sudhakar N"
#echo "Licencse: Infracloud.io" 
#################################

if [ "$#" -ne 1 ]; then
   echo "Enter the start and end indexes with comma separated;, Usage: $0  <st_ind>,<en_ind>"
   exit 1
fi
if [[ "$1" != *,* ]]; then
   echo "Invalid input, Please provid st,end index in comma separated."
   exit 1
fi

#Split the entered input into start,end indexes
IFS="," read -r st_ind en_ind <<< "$1"

#Loop through the index and generate the random number with index.
for ((i=st_ind; i<=en_ind; i++)); do
   random_number=$(shuf -i 10-999 -n 1)
   echo "$i,$random_number" >>inputFile
done
