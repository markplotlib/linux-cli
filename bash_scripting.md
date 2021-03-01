[Learning Bash Scripting](https://www.linkedin.com/learning/learning-bash-scripting-2/learning-bash-scripting?u=73275530)
on LinkedIn Learning

# Using Bash

## built-in vs commands

```
echo
echo Some Text

printf
printf "Some Text"

command echo hello
builtin echo hello

command -V df
command -V echo

enable -n echo
```

display names of all builtins
```
help
help echo
```

## expansions and substitutions

### tilde expansions
user's $HOME environment variable
```
~
echo ~
```

### brace expansions
creates sets or ranges

```
$ echo c{a,u,o}t
cat cut cot

$ echo {0..10}
0 1 2 3 4 5 6 7 8 9 10

$ echo {01..10}
01 02 03 04 05 06 07 08 09 10

echo {a..z}
echo {Z..A}
$ echo {01..10..3}
01 04 07 10
```

### parameter expansions

```
a="hi"
echo ${a}
```

Note: you can type `echo $a`, but `echo ${a}` is more clear.

```
$ hi="abcdefg"
$ echo $hi
abcdefg
$ echo ${hi:2}
cdefg
$ echo ${hi:2:3}
cde
```

#### parameter substitutions
```
$ greeting="hello there!"
$ echo ${greeting/there/everybody}
hello everybody!

$ eat="bananas"
$ echo ${eat/a/o}
bonanas
$ echo ${eat//a/o}
bononos
```

### command substitutions
`$(...)`
often used with grep, cut and awk

```
$ uname -r
3.1.7-340.x86_64
$ echo "The kernel is $(uname -r)."
The kernel is 3.1.7-340.x86_64
$ echo "Result: $(python -c 'print("Hello from Python!")')"
Hello from Python!
```

### arithmetic expansion
`$((...))`

```
$ echo $((2+2))
4
$ echo $((4/5))
0
```

# Programming with Bash
## Bash scripting syntax

A script file will begin with a shebang line
`#!/usr/bin/env bash`

Bash scripts run inside of a noninteractive shell.
This gives the script a clean environment to run in.

### single vs double quotes
Single quotes are *strong quotes* -- bash will not interpret text inside.

Within double quotes, however, bash will interpret text inside.

OK:
`echo The kernel is $(uname -r).`

Error:
`echo The (kernel) is $(uname -r).`

OK, BUT: just shows variable name -- literal
`echo 'The (kernel) is $(uname -r).'`

OK, AND: shows variable value
`echo "The (kernel) is $(uname -r)."`

## `echo`
blank line: `echo`
no new line: `echo -n`

`declare -p` will show all variables that have been set in the current session (at the bottom), plus all environment variables (above it).

`env` will show all environment variables
