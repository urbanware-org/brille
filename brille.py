#!/usr/bin/env python3
# -*- coding: utf-8 -*-

# ============================================================================
# Brille - Braille alphabet encode/decode module
# Copyright (C) 2019 by Ralf Kilian
# Distributed under the MIT License (https://opensource.org/licenses/MIT)
#
# GitHub: https://github.com/urbanware-org/brille
# GitLab: https://gitlab.com/urbanware-org/brille
# ============================================================================

__version__ = "1.0.2"

BRAILLE_ALPHABET = {"a": "⠁", "b": "⠃", "c": "⠉", "d": "⠙",
                    "e": "⠑", "f": "⠋", "g": "⠛", "h": "⠓",
                    "i": "⠊", "j": "⠚", "k": "⠅", "l": "⠇",
                    "m": "⠍", "n": "⠝", "o": "⠕", "p": "⠏",
                    "q": "⠟", "r": "⠗", "s": "⠎", "t": "⠞",
                    "u": "⠥", "v": "⠧", "w": "⠺", "x": "⠭",
                    "y": "⠽", "z": "⠵", "1": "⠼⠁", "2": "⠼⠃",
                    "3": "⠼⠉", "4": "⠼⠙", "5": "⠼⠑", "6": "⠼⠋",
                    "7": "⠼⠛", "8": "⠼⠓", "9": "⠼⠊", "0": "⠼⠚"}


def get_version():
    """
        Return the version of this module.
    """
    return __version__


def string2braille(string):
    """
        Convert (encode) a string into the Braille alphabet.
    """
    output = ""

    while " " * 2 in string:
        string = string.replace((" " * 2), " ")

    for char in string.lower().strip():
        braille_char = BRAILLE_ALPHABET.get(char, "")
        if braille_char == "":
            output += char
        else:
            output += braille_char

    return output.strip()


def braille2string(braille_code):
    """
        Convert (decode) the Braille alphabet into a string.
    """
    output = ""

    braille = {v: k for k, v in BRAILLE_ALPHABET.items()}
    for char in braille_code:
        braille_char = braille.get(char, "")
        if braille_char == "":
            output += char
        else:
            output += braille_char

    return output.strip()

# EOF
