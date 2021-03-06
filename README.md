A trivial effort to implement the UNIX coreutils in Haskell.
============================================================

To teach myself the Haskell programming language, I'm trying to
re-create the UNIX SYSV coreutils (cp, cat, echo, etc).

This repository is the result of that effort.

From the Man Pages
==================
PDF: http://www.sco.com/developers/devspecs/vol2.pdf

cat
---

`cat ( BU_CMD )`

### NAME

`cat` – concatenate and print ﬁles

### SYNOPSIS

`cat [ - s u v ] [ﬁle . . . ]`

### DESCRIPTION 

`cat` reads each ﬁlein sequence and writes it on the standard
output. Thus 
  
    cat file
  
prints the contents of `file` on your terminal, and 

    cat file1 file2 > file3
  
concatenates `file1` and `file2`, and writes the results in
`file3`. If no input ﬁle is given, or if the argument - is
encountered, `cat` reads from the standard input. `cat` processes
supplementary code set characters according to the locale speciﬁed in
the `LC_CTYPE` environment variable [see `LANG` on `envvar(BA_ENV)`].

The following options apply to `cat`:
- `-u` The output is not buffered. (The default is buffered output.)
- `-s` `cat` is silent about non-existent ﬁles.
- `-v` Causes non-printing characters (with the exception of tabs,
new-lines, and form-feeds) to be printed visibly. ASCII control
characters (octal 000 – 037) are printed as ˆ n, where n is the
corresponding ASCII character in the range octal 100 – 137 (@, A, B,
C, . . ., X, Y, Z, [, \, ], ˆ, and _); the DEL character (octal 0177)
is printed ˆ ?. Other non-printable characters are printed as M - x,
where x is the ASCII character speciﬁed by the low-order seven
bits. All supplementary code set characters are considered to be
printable.

### Errors
`cat` returns the following values:
`0` If all input ﬁles were output successfully.
`> 0` If an error occurred while accessing one or more input ﬁles.

echo
----

`echo ( BU_CMD )`

### NAME
`echo` – echo arguments

### SYNOPSIS

    echo [arg] . . .
    echo [arg]
  
### DESCRIPTION

`echo` writes its arguments separated by blanks and terminated by a
new-line on the standard output. It processes supplementary code set
characters according to the locale speciﬁed in the `LC_CTYPE`
environment variable [see `LANG` on `envvar(BA_ENV)`].  The
`/usr/bin/sh` version understands the following C-like escape
conventions; beware of conﬂicts with the shell’s use of \:

- `\b` backespace
- `\c` print line without new-line
- `\f` form-feed
- `\n` new-line
- `\r` carriage return
- `\t` tab
- `\v` vertical tab
- `\\` backslash
- `\0n` where n is the 1-, 2-, or 3-digit octal encoding of an 8-bit character.
Each byte of multibyte characters should be preceded by backslash
(\).
- `-n` do not add the newline to the output.

`echo` is useful for producing diagnostics in command ﬁles, for
sending known data into a pipe, and for displaying the contents of
environment variables.
