#!/bin/bash

LOG_DIR="$1"

if [ -z "$1" ]; then 

       echo "no argument " 
       exit 1 

    else
     echo "yes argument : $1"


fi 


if [ -d "$1" ]; then 
         echo  "Directory exists"
else 
      echo "Directory does not exists"
      exit 1 
fi  


find "$1" -type f -name "*.log"


TIMESTAMP=$(date +"%y%m%d_%H%M%S")


ARCHIVE_FILE="archive/logs_archive_${TIMESTAMP}.tar.gz"



tar -czf "$ARCHIVE_FILE " "$1"




if [ "$?" -eq 0 ]; then 
     echo "success: log files archived successfully!"

else 
     echo "error : archiving failed."
     exit 1


fi 






echo "Archive created: $(date '+%Y-%m-%d %H:%M:%S')"  >> log-archive.log
echo " File : $ARCHİVE_FILE" >> log-archive.log
echo "-------------------------------------------"   >>  log-archive.log 


















