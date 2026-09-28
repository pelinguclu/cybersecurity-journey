
Nginx Log Analyser 

Description 

Nginx Log Analyser is a Bash-based tool that Nginx access log files and extracts useful information from the log data.

The script reads an Nginx access log and identifies the most frequently occurring IP addresses,requested paths,
HTTP response status codes,and user agents.

This project was created to practice Linux command-line tool,Bash scripting,text processing,and basic log analysis.



Features

- Display the total number of requests. 
- Finds the top 5 addresses with the  most requests. 
- Finds the top 5 most requested paths. 
- Finds the top 5 HTTP response status codes. 
- Finds the top 5 user agents. 
- Uses access.log as the default log file. 
- Allows a different log file to be provided as a command-line argument.
- Checks whether the specified log file exists before analysis.


Requirements

-Linux 
-Bash 
-Nginx access log file 
-Standard Linux command-line tools:
 - awk 
 - sort
 - uniq
 - head
 - wc



Usage: 

Make sure the script is executable;

chmod +x nginx-log-analser.sh 




Using the default log file: 

İf no file is provided the script uses access.log:

./nginx-log-analyser.sh 



Using a specific log file:

A different log file can be provided as an argument:

./nginx-log-analyser.sh access.log

İf the specified file does not exist, the script displays an error message and exits.



Example Output:

--------------------------------------------------
            NGINX LOG ANALYSER                   
--------------------------------------------------

Total Requests: 7605

== Top 5 IP addresses with the most requests ==
   1087 178.128.94.113
   1087 142.93.136.176
   1087 138.68.248.85
   1086 159.89.185.30
    277 86.134.118.70

== Top 5 most requested paths ==
   4560 /v1-health
    270 /
    232 /v1-me
    127 /v1-list-workspaces
     75 /v1-list-timezone-teams

 == Top 5 response status codes ==
   5740 200
    937 404
    621 304
    192 400
     30 166

== Top 5 user agents ==
   4347 DigitalOcean Uptime Probe 0.22.0 (https://digitalocean.com)


The example output above is based on the sample Nginx access log used during development.


Log Format:

The Nginx access log contains information such as:

- IP address
- Date and time 
- HTTP request method and path 
- HTTP response status code 
- Response size 
- Referrer
- User agent

This script uses these fields to calculate the most frequent values.




How It Works:

The script first determines which log file should be analyzed.

İf no file is  provided as an argument it uses access.log by default.

İt then checks whether the specified file exists.İf the file cannot be found, the script displays an error message and exits.


The log is analyzed using standard Linux text-processing tools. 

- wc is used to count the total number of log entries.

- awk is used to extract specific fields from each log line, such as the IP address,requested path,status code,and user agent.

- sort organizes the extracted values so that identical values can be grouped together and sorted by frequency.

- uniq -c counts how many times each value occurs.

-head -n 5 limits the final results to the top five entries.


These commands are combined using Linux pipes to create the final analysis results.



Testing:

The script was tested using the following scenarios:

- Running the script with the default access.log. 
- Providing access.log as a command-line argument.
- Providing a non-existent log file. 
- Checking the Bash syntax using bash -n.
- Verifying the generated results for IP addresses, paths, status codes, and  user agents.


Project Structure:

nginx-log-analyser/

|- nginx-log-analyser/

|- access.log 

|- README.md 


What I Learned:

Through this project, I practiced:

- Bash scripting 
- Command-line-arguments
- File existence checks 
- Linux pipes 
- awk field extraction 
- Sorting and  counting data with sort and uniq 
- Processing structured log files
- Basic Nginx log analysis 
- Testing and debugging shell scripts 
- Writing project documentation 
 













































