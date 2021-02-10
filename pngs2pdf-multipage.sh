#!/bin/bash
# merely one ImageMagick command
# creates 1 multi-page PDF file
convert *.png -compress jpeg -resize 1240x1753 -units PixelsPerInch -density 150x150 -page a4 multipage.pdf
