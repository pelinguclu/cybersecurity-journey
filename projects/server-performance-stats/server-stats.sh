
#!/bin/bash


echo "------------------------------------"
echo "     SERVER PERFORMANCE STATS       "
echo "------------------------------------"





echo "--------------------------------"
echo " System Information "
echo "--------------------------------"

echo "Hostname: $(hostname)"
echo "os: $(grep '^NAME=' /etc/os-release | cut -d= -f2 | tr -d '\"')"
echo "Uptime: $(uptime -p)"
echo "Date: $(date)"
echo ""


echo "-------------------------------"
echo "      CPU Usage                "
echo "-------------------------------"
 top -bn1 | grep "Cpu(s)"
echo ""


echo "-------------------------------"
echo "      Memory Usage             "
echo "-------------------------------"
free -h 
echo""



echo "------------------------------"
echo "        Disk Usage            "
echo "------------------------------"
df -h /
echo ""




echo "------------------------------"
echo "         Processes            "
echo "------------------------------"

echo -n "Total  Running Processes:"
ps -e --no-headers | wc -l 
echo ""

echo "Top CPU Consuming Processes: "
ps -eo pid,%cpu,cmd --sort=-%cpu | head -n 6
echo""


echo "Top Memory Consuming Processes :"
ps -eo pid,%mem,cmd --sort=%mem | head -n 6 
echo""

echo "-------------------------------------------"

