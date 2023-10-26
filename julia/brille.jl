#!/usr/bin/env julia
# -*- coding: utf-8 -*-

# ============================================================================
# Brille - Braille alphabet encode/decode module for Julia
# Copyright (C) 2019 by Ralf Kilian
# Distributed under the MIT License (https://opensource.org/licenses/MIT)
#
# GitHub: https://github.com/urbanware-org/brille
# GitLab: https://gitlab.com/urbanware-org/brille
# ============================================================================

__version__ = "1.0.0"

BRAILLE_ALPHABET_BINARY = Dict([
                            ("a", "100000"), ("b", "101000"),
                            ("c", "110000"), ("d", "110100"),
                            ("e", "100100"), ("f", "111000"),
                            ("g", "111100"), ("h", "101100"),
                            ("i", "011000"), ("j", "011100"),
                            ("k", "100010"), ("l", "101010"),
                            ("m", "110010"), ("n", "110110"),
                            ("o", "100110"), ("p", "111010"),
                            ("q", "111110"), ("r", "101110"),
                            ("s", "011010"), ("t", "011110"),
                            ("u", "100011"), ("v", "101011"),
                            ("w", "011101"), ("x", "110011"),
                            ("y", "110111"), ("z", "100111"),
                            ("0", "001111"), ("1", "001100"),
                            ("2", "001110"), ("3", "001000"),
                            ("4", "001010"), ("5", "001001"),
                            ("6", "001101"), ("7", "001011"),
                            ("8", "000101"), ("9", "000111"),
                            (" ", "000000")])

BRAILLE_ALPHABET_CHARS = Dict([
                            ("a", "⠁"), ("b", "⠃"), ("c", "⠉"), ("d", "⠙"),
                            ("e", "⠑"), ("f", "⠋"), ("g", "⠛"), ("h", "⠓"),
                            ("i", "⠊"), ("j", "⠚"), ("k", "⠅"), ("l", "⠇"),
                            ("m", "⠍"), ("n", "⠝"), ("o", "⠕"), ("p", "⠏"),
                            ("q", "⠟"), ("r", "⠗"), ("s", "⠎"), ("t", "⠞"),
                            ("u", "⠥"), ("v", "⠧"), ("w", "⠺"), ("x", "⠭"),
                            ("y", "⠽"), ("z", "⠵"), ("0", "⠼⠚"),
                            ("1", "⠼⠁"), ("2", "⠼⠃"), ("3", "⠼⠉"),
                            ("4", "⠼⠙"), ("5", "⠼⠑"), ("6", "⠼⠋"),
                            ("7", "⠼⠛"), ("8", "⠼⠓"), ("9", "⠼⠊"),
                            (" ", " ")])


function get_version()
    """
        Return the version of this module.
    """
    return __version__
end


function string2braille(string, use_binary)
    """
        Convert (encode) a string into the Braille alphabet.
    """
    if use_binary
        braille_alphabet = BRAILLE_ALPHABET_BINARY
    else
        braille_alphabet = BRAILLE_ALPHABET_CHARS
    end
    output = ""

    while occursin("  ", string)
        string = replace(string, "  " => " ")
    end

    for char in lowercase(strip(string))
        try
            char = braille_alphabet["$char"]
            if use_binary
                output = "$output $char"
            else
                output = "$output$char"
            end
        catch
            if use_binary
                output = "$output $char"
            else
                output = "$output$char"
            end
        end
    end

    return strip(output)
end


function braille2string(braille_code, use_binary)
    """
        Convert (decode) the Braille alphabet into a string.
    """
    if use_binary
        braille_alphabet = BRAILLE_ALPHABET_BINARY
    else
        braille_alphabet = BRAILLE_ALPHABET_CHARS
    end
    output = ""

    while occursin("  ", braille_code)
        braille_code = replace(braille_code, "  " => " ")
    end

    if use_binary
        braille = Dict(v => k for (k, v) in braille_alphabet)
        output = ""
        for char in split(braille_code, " ")
            braille_char = get(braille, char, "")
            if braille_char == ""
                output = "$output$char"
            else
                output = "$output$braille_char"
            end
        end
    else
        braille = Dict(v => k for (k, v) in braille_alphabet)
        for char in braille_code
            try
                char = braille["$char"]
                output = "$output$char"
            catch
                output = "$output$char"
            end
        end
    end

    return strip(output)
end

# EOF
