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
