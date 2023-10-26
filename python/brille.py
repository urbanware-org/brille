#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#
# Brille - Braille alphabet encode/decode module for Python
# Copyright (C) 2023 by Ralf Kilian
# Distributed under the MIT License (https://opensource.org/licenses/MIT)
#
# GitHub: https://github.com/urbanware-org/brille
# GitLab: https://gitlab.com/urbanware-org/brille
#

__version__ = "1.1.0"

BRAILLE_ALPHABET_BINARY = {"a": "100000", "b": "101000", "c": "110000",
                           "d": "110100", "e": "100100", "f": "111000",
                           "g": "111100", "h": "101100", "i": "011000",
                           "j": "011100", "k": "100010", "l": "101010",
                           "m": "110010", "n": "110110", "o": "100110",
                           "p": "111010", "q": "111110", "r": "101110",
                           "s": "011010", "t": "011110", "u": "100011",
                           "v": "101011", "w": "011101", "x": "110011",
                           "y": "110111", "z": "100111", "0": "001111",
                           "1": "001100", "2": "001110", "3": "001000",
                           "4": "001010", "5": "001001", "6": "001101",
                           "7": "001011", "8": "000101", "9": "000111",
                           " ": "000000"}

BRAILLE_ALPHABET_CHARS = {"a": "⠁", "b": "⠃", "c": "⠉", "d": "⠙",
                          "e": "⠑", "f": "⠋", "g": "⠛", "h": "⠓",
                          "i": "⠊", "j": "⠚", "k": "⠅", "l": "⠇",
                          "m": "⠍", "n": "⠝", "o": "⠕", "p": "⠏",
                          "q": "⠟", "r": "⠗", "s": "⠎", "t": "⠞",
                          "u": "⠥", "v": "⠧", "w": "⠺", "x": "⠭",
                          "y": "⠽", "z": "⠵", "1": "⠼⠁", "2": "⠼⠃",
                          "3": "⠼⠉", "4": "⠼⠙", "5": "⠼⠑", "6": "⠼⠋",
                          "7": "⠼⠛", "8": "⠼⠓", "9": "⠼⠊", "0": "⠼⠚",
                          " ": " "}


def get_version():
    """
        Return the version of this module.
    """
    return __version__


def string2braille(string, use_binary=False):
    """
        Convert (encode) a string into the Braille alphabet.
    """
    if use_binary:
        braille_alphabet = BRAILLE_ALPHABET_BINARY
    else:
        braille_alphabet = BRAILLE_ALPHABET_CHARS
    output = ""

    while " " * 2 in string:
        string = string.replace((" " * 2), " ")

    for char in string.lower().strip():
        braille_char = braille_alphabet.get(char, "")
        if braille_char == "":
            output += char
        else:
            output += braille_char
            if use_binary:
                output += " "

    return output.strip()


def braille2string(braille_code, use_binary=False):
    """
        Convert (decode) the Braille alphabet into a string.
    """
    if use_binary:
        braille_alphabet = BRAILLE_ALPHABET_BINARY
    else:
        braille_alphabet = BRAILLE_ALPHABET_CHARS
    output = ""

    if use_binary:
        braille = {v: k for k, v in braille_alphabet.items()}
        for char in braille_code.split(" "):
            braille_char = braille.get(char, "")
            if braille_char == "":
                output += char
            else:
                output += braille_char
    else:
        braille = {v: k for k, v in braille_alphabet.items()}
        for char in braille_code:
            braille_char = braille.get(char, "")
            if braille_char == " ":
                output += char
            else:
                output += braille_char

    return output.strip()

# EOF
