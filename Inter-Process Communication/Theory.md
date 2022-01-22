### Inter-process Communication using Pipe in LINUX :

A pipe is a communication device that permits unidirectional communication. Data written to the “write end” of the pipe is read back from the “read end.” Pipes are serial devices; the data is always read from
the pipe in the same order it was written. Typically, a pipe is used to communicate between two threads ina single process or between parent and child processes.

In a shell, the symbol | creates a pipe. For example, this shell command causes the shell to produce two
child processes, one for ls and one for less:

`% ls | less`
