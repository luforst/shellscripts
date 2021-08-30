#!/usr/bin/fish
# merely one pdftk command
# decrypts a pdf file
pdftk "$argv[0].pdf" input_pw $argv[1] output "$argv[0]_decrypted.pdf"

