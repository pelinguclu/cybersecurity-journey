
Log Archive Tool

Overview :

A bash script for archiving and compressing log files on a linux system.

This project was created to practice Linux file management,Bash scripting,archiving compression and basic automation .


Objective:

The main goal of this project is to create a simple tool that collects log files from a specified directory and stores them as a compressed archive.

The archive is created with a date and time in its filename so that different archives  can easily identified.


Features:


- Accept a log directory as an argument.
- Checks whether the specified log directory exists.
- Creates an archive directory when needed.
- Archives log files into a .tar.gz file.
- Uses the current date and time in the archive filename.
- Provides information about the archive process.
- Handles basic errors and invalid input.


Technologies:

- Linux 
- Bash
- Bash "if" statements
- tar 
- gzip 
- find 
- date
- mkdir


Usage:

Make the script executable:

chmod +x log-archive.sh 

Run the script by providing the log directory:

./log-archive.sh <log-directory >

Example:
./log-archive.sh logs





Example:

After running the script, a compressed archive is created in the archive directory.

Example filename:

logs_archive_20260917_203000.tar.gz

The exact filename will depend on the date and time when the script is executed.



Project Structure:


log-archive-tool/

|- log-archive.sh

|-  logs/

|- archive/

|- README.md




How It Works: 

1. The script receives the log directory as an argument.
2. It checks whether the directory exists.
3. It prepares the archive directory.
4. It gets the current date and time.
5. It creates a .tar.gz archive containing the log files.
6. The archive is stored in the archive directory.
7. The script displays the result of the operation.



What I Learned:

Through this project,I practiced:

- Working with Linux files and directories.
- Using Bash scripts for automation.
- Passing arguments to Bash scripts.
- Using tar and gzip for archiving and compression.
- Working with date and time in bash.
- Performing basic input and error checks.
- Organizing a small Linux automation project.






Future Improvements;


Possible future improvements include:


-Adding log rotation functionality.
- Allowing the user to specify the archive location.
- Adding more detailed error handling.
- Adding logging for the archive process.
- Automatically removing very old archives.
- Adding options for different archive formats.


























 























































