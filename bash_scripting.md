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
