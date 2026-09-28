#!/bin/bash 

LOG_FILE="${1:-access.log}"


if [ ! -f "$LOG_FILE" ];then 
    echo "Error: file not found: $LOG_FILE "
    exit 1
fi 

echo "--------------------------------------------------"
echo "            NGINX LOG ANALYSER                   "
echo "--------------------------------------------------"

echo "" 
echo "Total Requests: $(wc -l < $LOG_FILE)"

echo "" 
echo "== Top 5 IP addresses with the most requests =="
awk '{print $1}' "$LOG_FILE" |sort | uniq -c | sort -nr |head -n 5 

echo "" 
echo "== Top 5 most requested paths =="
awk '{print $7}' "$LOG_FILE"|sort | uniq -c | sort -nr |head -n 5


echo ""
echo " == Top 5 response status codes =="
awk ' $9 ~ /^[0-9]{3}$/ {print $9}' "$LOG_FILE"|sort | uniq -c | sort -nr |head -n 5

echo ""
echo "== Top 5 user agents =="
awk -F'"' '{print $6}' "$LOG_FILE"|sort | uniq -c | sort -nr |head -n 5

echo "" 

