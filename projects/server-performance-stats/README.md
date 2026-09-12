
## Overview 

A Bash script designed to monitor Linux system performance and resource utilization .

the project focuses on practical Linuc dydtem administration , Bash scripting and basic security-oriented system 
monitoring .


## Features

- ** System Information:** Hostname ,operating system,uptime,and current timestap 
- ** CPU & Memory:** CPU status and RAM/Swap usage.
- ** Disk Usage:** Root partition monitoring .
- ** Process Managment:** total running processes and top CPU/memory-cobsuming processes.
- ** Readable Output:** Organized output terminal for easier sysytem monitoring.


# Technologies 

-Linux 
-Bash 
-'top'
-'free'
-'df'
-'ps'
-'grep'
-'cut'
-'tr'
-'wc'



# Usage 
Make the script execurable and run it:

"""bash 
chmod +x server-stats.sh 
./server-stats.sh 
"""


## Ezample Output


------------------------------------
     SERVER PERFORMANCE STATS       
------------------------------------
--------------------------------
 System Information 
--------------------------------
Hostname: sanal-VirtualBox
os: Ubuntu
Uptime: up 23 minutes
Date: Fri Sep 11 11:47:54 +03 2026

-------------------------------
      CPU Usage                
-------------------------------
%Cpu(s):  2.1 us,  4.3 sy,  0.0 ni, 93.6 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st 

-------------------------------
      Memory Usage             
-------------------------------
               total        used        free      shared  buff/cache   available
Mem:           3.3Gi       1.2Gi       344Mi        34Mi       2.0Gi       2.1Gi
Swap:          3.8Gi          0B       3.8Gi

------------------------------
        Disk Usage            
------------------------------
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda2        34G   15G   18G  46% /

------------------------------
         Processes            
------------------------------
Total  Running Processes:232

Top CPU Consuming Processes: 
    PID %CPU CMD
   3496  100 ps -eo pid,%cpu,cmd --sort=-%cpu
   2413  6.5 /usr/bin/gnome-shell
   3233  4.2 /usr/bin/ptyxis --gapplication-service
   3482  2.2 /usr/bin/bash
   2557  0.5 /usr/bin/ibus-daemon --panel disable

Top Memory Consuming Processes :
    PID %MEM CMD
      2  0.0 [kthreadd]
      3  0.0 [pool_workqueue_release]
      4  0.0 [kworker/R-rcu_gp]
      5  0.0 [kworker/R-sync_wq]
      6  0.0 [kworker/R-kvfree_rcu_reclaim]




## What I Learned 

- Practiced Bash scripting on Linux.
-Learned how to retrieve and display system resource information.
- Practiced working with CPU,memory,disk and process information. 
- Used Linux commands and pipelines to process command output.
- Improved my understanding of basic Linux system monitoring.



## Future Improvements 

- Add configurable CPU, memory,and disk usage thresholds.
- Add warning messages when resource usage exceeds defined limits.
- Export monitoring results to a log file. 
- Add more system health checks.
- Add command-line arguments for different monitoring options. 
