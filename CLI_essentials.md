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
