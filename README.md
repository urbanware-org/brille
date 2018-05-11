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

Simple *Python* module that allows converting a string into the Braille alphabet and vice versa.

[Top](#brille-)

## Details

The definition above actually explains it all. Simple and easy to use.

However, the module requires a shell that uses UTF-8 encoding, otherwise it will crash due to encoding errors.

The code was written on *Linux* and has only been tested on that platform, yet.

Feel free to modify!

[Top](#brille-)

## Requirements

Notice that this module uses the *Python* 3.x framework. There is no official version for *Python* 2.x, but if you need that for whatever reason, you can try refactoring the syntax from *Python* 3.x to version 2.x using the *3to2* tool.

However, there is no guarantee that this works properly or at all.

[Top](#brille-)

## Usage

### Encode a string into Braille alphabet

So, to convert the string `This is an example` into the Braille alphabet, type:

```python
braille = brille.string2braille("This is an example")
```
Supported characters are letters, numbers and spaces. All others will be ignored. The Braille letters will be returned using UTF-8 characters.

### Decode Braille alphabet into a string

The other way around, to convert Braille letters into a string, type:

```python
string = brille.braille2string("⠞⠓⠊⠎ ⠊⠎ ⠁⠝ ⠑⠭⠁⠍⠏⠇⠑"))
```
Notice that you can only use the UTF-8 characters to enter the Braille letters. All other characters will be ignored.

[Top](#brille-)

## Contact

Any suggestions, questions, bugs to report or feedback to give?

You can contact me by sending an email to <dev@urbanware.org>.

[Top](#bille-)

## Useless facts

*   The missing "a" inside the project name "Brille" is not a typo. The word "Brille" is German for "glasses".

[Top](#brille-)
