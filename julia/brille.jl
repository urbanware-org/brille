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

BRAILLE_ALPHABET = Dict([
                    ("a", "⠁"), ("b", "⠃"), ("c", "⠉"), ("d", "⠙"),
                    ("e", "⠑"), ("f", "⠋"), ("g", "⠛"), ("h", "⠓"),
                    ("i", "⠊"), ("j", "⠚"), ("k", "⠅"), ("l", "⠇"),
                    ("m", "⠍"), ("n", "⠝"), ("o", "⠕"), ("p", "⠏"),
                    ("q", "⠟"), ("r", "⠗"), ("s", "⠎"), ("t", "⠞"),
                    ("u", "⠥"), ("v", "⠧"), ("w", "⠺"), ("x", "⠭"),
                    ("y", "⠽"), ("z", "⠵"), ("1", "⠼⠁"), ("2", "⠼⠃"),
                    ("3", "⠼⠉"), ("4", "⠼⠙"), ("5", "⠼⠑"), ("6", "⠼⠋"),
                    ("7", "⠼⠛"), ("8", "⠼⠓"), ("9", "⠼⠊"), ("0", "⠼⠚")])


function get_version()
    """
        Return the version of this module.
    """
    return __version__
end


function string2braille(string)
    """
        Convert (encode) a string into the Braille alphabet.
    """
    output = ""

    while occursin("  ", string)
        string = replace(string, "  " => " ")
    end

    for char in lowercase(strip(string))
        try
            char = BRAILLE_ALPHABET["$char"]
            output = "$output$char"
        catch
            output = "$output$char"
        end
    end

    return strip(output)
end


function braille2string(braille_code)
    """
        Convert (decode) the Braille alphabet into a string.
    """
    output = ""

    while occursin("  ", braille_code)
        braille_code = replace(braille_code, "  " => " ")
    end

    braille = Dict(value => key for (key, value) in BRAILLE_ALPHABET)
    for char in braille_code
        try
            char = braille["$char"]
            output = "$output$char"
        catch
            output = "$output$char"
        end
    end

    return strip(output)
end

# EOF
