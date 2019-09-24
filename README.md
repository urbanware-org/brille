# *Brille*

**Table of contents**
*   [Definition](#definition)
*   [Details](#details)
*   [Requirements](#requirements)
*   [Usage](#usage)
*   [Contact](#contact)
*   [Useless facts](#useless-facts)

----

## Definition

Simple module for *Julia* and *Python* that allows converting a string into the Braille alphabet and vice versa.

[Top](#brille)

## Details

The definition above actually explains it all. Simple and easy to use.

However, the module requires a shell that uses UTF-8 encoding, otherwise it will crash due to encoding errors.

The code was written on *Linux* and has only been tested on that platform, yet.

Feel free to modify!

[Top](#brille)

## Requirements

### *Julia*

This module was written using *Julia* 1.1.0, but should also work with earlier and, of course, newer versions.

### *Python*

Notice that this module uses the *Python* 3.x framework. There is no official version for *Python* 2.x, but if you need that for whatever reason, you can try refactoring the syntax from *Python* 3.x to version 2.x using the *3to2* tool.

However, there is no guarantee that this works properly or at all.

[Top](#brille)

## Usage

### Encode a string into Braille alphabet

Supported characters are letters, numbers and spaces. All others will be ignored. The Braille letters will be returned using UTF-8 characters.

#### *Julia*

```julia
braille = string2braille("This is an example")
```

#### *Python*

```python
braille = brille.string2braille("This is an example")
```

### Decode Braille alphabet into a string

Notice that you can only use the UTF-8 characters to enter the Braille letters. All other characters will be ignored.

#### *Julia*

```julia
string = braille2string("⠞⠓⠊⠎ ⠊⠎ ⠁⠝ ⠑⠭⠁⠍⠏⠇⠑"))
```

#### *Python*

```python
string = brille.braille2string("⠞⠓⠊⠎ ⠊⠎ ⠁⠝ ⠑⠭⠁⠍⠏⠇⠑"))
```

[Top](#brille)

## Contact

Any suggestions, questions, bugs to report or feedback to give?

You can contact me by sending an email to <dev@urbanware.org>.

[Top](#brille)

## Useless facts

*   The missing "a" inside the project name "Brille" is not a typo. The word "Brille" is German for "glasses".

[Top](#brille)
