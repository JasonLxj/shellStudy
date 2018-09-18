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

## Escape & Description



| 1    | **\\**backslash                 |
| ---- | ------------------------------- |
| 2    | **\a**alert (BEL)               |
| 3    | **\b**backspace                 |
| 4    | **\c**suppress trailing newline |
| 5    | **\f**form feed                 |
| 6    | **\n**new line                  |
| 7    | **\r**carriage return           |
| 8    | **\t**horizontal tab            |
| 9    | **\v**vertical tab              |

* You can use the **-E** option to disable the interpretation of the backslash escapes (default).

* You can use the **-n** option to disable the insertion of a new line.

| 1    | **${var}**Substitute the value of *var*.                     |
| ---- | ------------------------------------------------------------ |
| 2    | **${var:-word}**If *var* is null or unset, *word* is substituted for **var**. The value of *var*does not change. |
| 3    | **${var:=word}**If *var* is null or unset, *var* is set to the value of **word**. |
| 4    | **${var:?message}**If *var* is null or unset, *message* is printed to standard error. This checks that variables are set correctly. |
| 5    | **${var:+word}**If *var* is set, *word* is substituted for var. The value of *var* does not change. |

## 重定向

\> 输出到文件 （覆盖）

``command > /dev/null`` // Sometimes you will need to execute a command, but you don't want the output displayed on the screen. In such cases, you can discard the output by redirecting it to the file **/dev/null** ,The file **/dev/null** is a special file that automatically discards all its input. 

``command > /dev/null 2>&1``Here **2** represents **STDERR** and **1** represents **STDOUT**. You can display a message on to STDERR by redirecting STDOUT into STDERR as follows

\>> 输出到文件 （增量式）

\< 输入

\<< 会一直从终端读，直到出现对应的字符，然后执行相应的命令

```shell
cat << EOF
This is a simple lookup program 
for good (and bad) restaurants
in Cape Town.
EOF
输出：
This is a simple lookup program
for good (and bad) restaurants
in Cape Town.
```

| 1    | **pgm > file**Output of pgm is redirected to file            |
| ---- | ------------------------------------------------------------ |
| 2    | **pgm < file**Program pgm reads its input from file          |
| 3    | **pgm >> file**Output of pgm is appended to file             |
| 4    | **n > file**Output from stream with descriptor **n** redirected to file |
| 5    | **n >> file**Output from stream with descriptor **n** appended to file |
| 6    | **n >& m**Merges output from stream **n** with stream **m**  |
| 7    | **n <& m**Merges input from stream **n** with stream **m**   |
| 8    | **<< tag**Standard input comes from here through next tag at the start of line |
| 9    | **\|**Takes output from one program, or process, and sends it to another |

## man

| 1    | **NAME**Name of the command                                  |
| ---- | ------------------------------------------------------------ |
| 2    | **SYNOPSIS**General usage parameters of the command          |
| 3    | **DESCRIPTION**Describes what the command does               |
| 4    | **OPTIONS**Describes all the arguments or options to the command |
| 5    | **SEE ALSO**Lists other commands that are directly related to the command in the man page or closely resemble its functionality |
| 6    | **BUGS**Explains any known issues or bugs that exist with the command or its output |
| 7    | **EXAMPLES**Common usage examples that give the reader an idea of how the command can be used |
| 8    | **AUTHORS**The author of the man page/command                |