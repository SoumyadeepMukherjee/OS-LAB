### Switch from one process to another using exec family of system call :

The *exec* family of functions replaces the program running in a process with another program. When a
program calls an exec function, that process immediately ceases executing that program and begins
executing a new program from the beginning, assuming that the exec call does not encounter an error.
There shall be no return from a successful exec, because the calling process image is overlaid by the new
process image.
