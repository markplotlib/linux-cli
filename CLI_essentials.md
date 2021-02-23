Bash LinkedIn Quiz Practice

Q: What does this do?
`cat >notes -`

Q: What is the output here?
```
VAR="This old man came rolling"
echo "${VAR//man/rolling}"
```

# The Shell

> A command line interface for running programs on your computer.
> The terminal program is the program that we use to interact with the shell.

```
>>> echo hello!
hello!
>>> echo hello!!
echo helloecho hello!
helloecho hello!
>>> 'echo hello!!'
hello!!
```

Q: What do you think is going on when you run this command:
`echo $COLUMNS x $LINES`

A: The shell is telling me how big my terminal is.


**Single quotes and double quotes**
These do slightly different things in the shell. If you're unsure which to use, go for single quotes.
“curly quotes” will not work in the shell.

## `curl`
Transfers data. Most useful for downloading from the web.
meaning: 'C + URL', i.e., "see URL" (originally a joke)

`curl http://google.com`

result: not useful just yet


`curl -L http://google.com`

`-L` option: "follow redirects"

result: to view source code of the actual Google.com home page


`curl -o out_file.html -L http://google.com`

`-o` option: instead of displaying to terminal, this does `--output`

(of course `curl -L -o out_file.html http://google.com` also works too!)


best practice: single-quotes around URL:

`curl -o out_file.html -L 'http://google.com'`

reason: special characters in the URL such as `&` could produce the wrong shell command.

## view with `cat` and `less`

`cat`: catenate

`cat file1.txt file2.py`

view *less* of the file at once: one screen-page at a time

`less file1.txt`

* `/` to search
* `b` to go back

`rmdir` works like `rm -r`, but only when directory is empty.

`rm -i file.txt` to prompt user first

### Quiz

How can I delete the third and fourth file names?

```
Good File
Bad Name Good File
Bad File
Good Name Bad Face
```

###### Answer

`rm *'Bad F'*`

## `grep` and `wc`

`grep 'def' pytest/*` displays all lines containing `def` in directory `pytest`

`grep 'def' pytest/* | less` pipes it to `less` (i.e., 1 screen at a time)

Perform a word count using grep:

`curl -L http://google.com | grep -c class`

### `wc` for Word Count

`curl -L http://google.com | grep class | wc -l`

* `-l` is for counting lines

## Shell variables and Environment variables

### Shell variables

```
numbers='one two three'
echo $numbers
```
no spaces when assigning

```
echo $LINES x $COLUMNS
```
These are internal to the shell program itself.

### Environment variables

Environment variables are shared with programs that you run from within the shell.

```
echo $PATH
```
This tells your system where your program files are.

Directories in the `PATH` variable are separated by colons (`:`)

#### Adding a directory to the `PATH` environment variable

`PATH=$PATH:/new/dir/here`

**Note**: This change goes away once the shell is closed.

## Customizing the shell itself

**Shell Scripts** are files containing shell commands.
This is the most important shell script to know.

`bin` stands for binary. This directory sits in the home directory.

### Shell configuration file

This file can contain lines, like :

```
PATH=$PATH:/Users/markc/bin

date
echo "Hi, welcome to the shell"
```

For Windows or Mac, this file is named:
`.bash_profile`

For *Linux*, the above is only for log-in sessions.
*Non-log-in shell sessions* run a file called `.bashrc`

##### To work around this OS inconsistency in Linux:
```
if [-f ~/.bashrc ] ; then
  source ~/.bashrc
fi
```

## Controlling the Shell Prompt

view the manual:
(in Git Bash: viewable online only)
`man bash` (all others)

http://bashrcgenerator.com/

## Alias

`alias ll='ls -la'`

This is an *unsaved* alias for this shell session.
**Aliases can be saved in** `.bash_profile`

To view aliases already stored:
`alias`

Extra basic commands
```
date
expr 2 + 2
uname
hostname
```
