# *Brille*

**Table of contents**

* [Definition](#definition)
* [Details](#details)
* [Requirements](#requirements)
* [Usage](#usage)
* [Contact](#contact)
* [Useless facts](#useless-facts)

---

## Definition

Simple module for *Julia* and *Python* that allows converting a string into the Braille alphabet and vice versa.

[Top](#brille)

## Details

The definition above actually explains it all.

It should be added that the Braille characters can be printed using UTF-8 characters as well as the corresponding binary code characters. The code was written on *Linux* and has only been tested on that platform, yet.

> [!NOTE]
> This project was **officially discontinued** as of August 2025 and is **no longer maintained**.

[Top](#brille)

## Requirements

### *Julia*

This module was written using *Julia* 1.8.0, but should also work with earlier and, of course, newer versions.

### *Python*

Notice that this module uses the *Python* 3.x framework. There is no official version for *Python* 2.x, but if you need that for whatever reason, you can try refactoring the syntax from *Python* 3.x to version 2.x using the *3to2* tool.

However, there is no guarantee that this works properly or at all.

### Shell

As already mentioned, the Braille characters can be printed using UTF-8 characters. If you want to use that way, the module needs a shell which is capable of UTF-8 encoding, otherwise it will crash due to encoding errors.

[Top](#brille)

## Usage

### Encode a string into Braille alphabet

Supported characters are standard letters (no special country specific ones), numbers and spaces. All others will be ignored.

#### *Julia*

The encode method has two parameters:

```julia
string2braille(string, use_binary)
```

You can either encode a string to UTF-8 Braille

```julia
braille = string2braille("This is an example", false)
```

or binary code characters:

```julia
braille = string2braille("This is an example", true)
```

#### *Python*

The encode method has two parameters, where `use_binary` is `False` by default:

```python
string2braille(string, use_binary=False)
```

You can either encode a string to UTF-8 Braille

```python
braille = brille.string2braille("This is an example", False)
```

or binary code characters:

```python
braille = brille.string2braille("This is an example", True)
```

### Decode Braille alphabet into a string

Supported characters are standard letters (no special country specific ones), numbers and spaces. All others will be ignored.

#### *Julia*

The decode method has two parameters:

```julia
braille2string(string, use_binary)
```

You can either decode Braille UTF-8

```julia
string = braille2string("⠞⠓⠊⠎ ⠊⠎ ⠁⠝ ⠑⠭⠁⠍⠏⠇⠑", false)
```

or binary code characters to a string:

```julia
string = braille2string("011110 101100 011000 011010 000000 011000 011010 000000 100000 110110 000000 100100 110011 100000 110010 111010 101010 100100", true)
```

#### *Python*

The decode method has two parameters, where `use_binary` is `False` by default:

```python
braille2string(string, use_binary=False)
```

You can either decode Braille UTF-8

```python
string = brille.braille2string("⠞⠓⠊⠎ ⠊⠎ ⠁⠝ ⠑⠭⠁⠍⠏⠇⠑", False)
```

or binary code characters to a string:

```python
string = braille2string("011110 101100 011000 011010 000000 011000 011010 000000 100000 110110 000000 100100 110011 100000 110010 111010 101010 100100", True)
```

[Top](#brille)

## Contact

As mentioned above, this project was discontinued. For this reason, no new features will be implemented, existing features will not be enhanced and remaining bugs will not be fixed either.

However, if you have questions about it, you can contact me by sending an email to <dev@urbanware.org>.

[Top](#brille)

## Useless facts

* The missing "a" inside the project name "Brille" is not a typo. The word "Brille" is German for "glasses".

[Top](#brille)
