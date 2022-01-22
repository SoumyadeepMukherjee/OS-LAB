## UNIX Operating System 

UNIX is an operating system which was first developed in the 1960s, and has been under constant development ever since. By operating system, we mean the suite of programs which make the computer work. It is a stable, multi-user, multi-tasking system for servers, desktops and laptops.

### Basic LINUX commands :

`date` : The date command tells the system to print the date and time.

`date +%m-%d-%Y` : This command will display the date in dd/mm/yy.

`who` : This command will let you display the users currently logged in to your OS.

`cal` : Displays calendar.

`echo` : Display text on the screen. Mostly useful when writing shell scripts.

`bc` : Basic Calculator.

### Commands for Navigating the LINUX File systems :

`pwd`: pwd stands for print working directory. It will display the current directory in which you are working.

`cd` : cd stands for change directory. It will change your directory from that place of that folder or any other place.

`cd ..` : It will return back to its root from where that particular file/directory is opened.

`ls` : List command. It will display all the list of files and directories present in that directory.

`ls -l` : Long List files command. It shows file or directory, size, modified date and time, file or folder and owner of the file and its permission.

`ls-a` : List all files, including “hidden” files. Hidden files are those files that begin with a “.”.

### Working with Files and Directories :

`touch` : It will make empty files.

`file` : Find out what kind of file it is.

`cat > filename.txt` : This will create a txt file in which you can write some lines and to save it you have to press CTRL+Z.

`cat filename.txt` : It will display all of our content written in that txt file.

`head` : Display the first few lines of a text file.

`tail` : Display the last few lines of a text file.

`cp [old_filename] [new_filename]` : This command will make a copy of a file into a new file.

`cat [file1] [file2] > [file3]` : This command will help to combine both file1 and file2 into file3. It means file1 and file2 will combine to file3.

`rm [filename]` : This command will delete the files in any directory.

`mv [file_name] [file/directory_name]` : This command will help to move a file to a new location or rename the file.

`mkdir` : It will make a new directory.

`rmdir` : It will remove an empty directory.

`tree` : It returns the directory paths and files in sub-directory and a summary of a total number of sub-directories and files.

### Searching For Files :

`which` : Shows the full path of shell commands found in your path.

`whereis` : Locates the program, source code, and manual page for a command (if all information is available).

`locate` : A quick way to search for files anywhere on the file system.

`find` : A very powerful command, but sometimes tricky to use. It can be used to search for files matching certain patterns, as well as many other types of searches.

### Informational Commands :

`ps` : Lists currently running processes (programs).

`w` : Show who is logged on and what they are doing.

`id` : Print user-id and group id's.

`top` : Displays CPU processes in a full-screen GUI. A great way to see the activity on your computer in real-time. Type “Q” to quit.

`free` : Displays amount of free and used memory in the system.

`uname -a` : Prints system information to the screen (kernel version, machine type, etc.)

### System Administration :

`su` : “Switch User”. Allows us to switch to another user's account temporarily.The default account to switch to is the root/superuser account.

`chmod` : Change permissions on a file.

`chown` : Change file owner and group.

`passwd` : Update a user’s authentication tokens(s).

`uptime` : Used to find the duration for which the system has been running.

### Other Utilities :

`clear` : This command is used to clear the terminal screen.

`more` : Display a file, or program output one page at a time.

`less` : An improved replacement for the “more” command. Allows you to scroll backwards as well as forwards.

`grep` : Search for a pattern in a file or program output.

`lpr` : Print a file or program output.

`sort` : Sort a file or program output.

