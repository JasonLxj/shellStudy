[教程网站](https://www.tutorialspoint.com/unix/shell_scripting.htmit)



## 关键字

* **read**  command which takes the input from the keyboard and assigns it as the value of the variable PERSON and finally prints it on STDOUT.**(1.readInfo.md)**

* ```
  #!/bin/sh //alert the system that a shell script is being started.
  ```

## Variable Types

When a shell is running, three main types of variables are present −

- **Local Variables** − A local variable is a variable that is present within the current instance of the shell. It is not available to programs that are started by the shell. They are set at the command prompt.
- **Environment Variables** − An environment variable is available to any child process of the shell. Some programs need environment variables in order to function correctly. Usually, a shell script defines only those environment variables that are needed by the programs that it runs.
- **Shell Variables** − A shell variable is a special variable that is set by the shell and is required by the shell in order to function correctly. Some of these variables are environment variables whereas others are local variables.

| 1    | **$0**The filename of the current script.                    |
| ---- | ------------------------------------------------------------ |
| 2    | **$n**These variables correspond to the arguments with which a script was invoked. Here **n** is a positive decimal number corresponding to the position of an argument (the first argument is $1, the second argument is $2, and so on). |
| 3    | **$#**The number of arguments supplied to a script.          |
| 4    | **$\***All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2. |
| 5    | **$@**All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2. |
| 6    | **$?**The exit status of the last command executed.          |
| 7    | **$$**The process number of the current shell. For shell scripts, this is the process ID under which they are executing. |
| 8    | **$!**The process number of the last background command.     |



## File  Test Operators

| Operator    | Description                                                  | Example                   |
| ----------- | ------------------------------------------------------------ | ------------------------- |
| **-b file** | Checks if file is a block special file; if yes, then the condition becomes true. | [ -b $file ] is false.    |
| **-c file** | Checks if file is a character special file; if yes, then the condition becomes true. | [ -c $file ] is false.    |
| **-d file** | Checks if file is a directory; if yes, then the condition becomes true. | [ -d $file ] is not true. |
| **-f file** | Checks if file is an ordinary file as opposed to a directory or special file; if yes, then the condition becomes true. | [ -f $file ] is true.     |
| **-g file** | Checks if file has its set group ID (SGID) bit set; if yes, then the condition becomes true. | [ -g $file ] is false.    |
| **-k file** | Checks if file has its sticky bit set; if yes, then the condition becomes true. | [ -k $file ] is false.    |
| **-p file** | Checks if file is a named pipe; if yes, then the condition becomes true. | [ -p $file ] is false.    |
| **-t file** | Checks if file descriptor is open and associated with a terminal; if yes, then the condition becomes true. | [ -t $file ] is false.    |
| **-u file** | Checks if file has its Set User ID (SUID) bit set; if yes, then the condition becomes true. | [ -u $file ] is false.    |
| **-r file** | Checks if file is readable; if yes, then the condition becomes true. | [ -r $file ] is true.     |
| **-w file** | Checks if file is writable; if yes, then the condition becomes true. | [ -w $file ] is true.     |
| **-x file** | Checks if file is executable; if yes, then the condition becomes true. | [ -x $file ] is true.     |
| **-s file** | Checks if file has size greater than 0; if yes, then condition becomes true. | [ -s $file ] is true.     |
| **-e file** | Checks if file exists; is true even if file is a directory but exists. | [ -e $file ] is true.     |