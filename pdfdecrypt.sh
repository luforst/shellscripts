#!/bin/bash
# merely one pdftk command
# decrypts a pdf file
pdftk pdfdatei.pdf input_pw geheimespasswort output pdfdatei_decrypted.pdf 

# alternative using qdf, works with a * in the password
qpdf --password=paeaebO\*2022 --decrypt 2022.10.27\ -\ Vorlesung\ 2\ -\ Adaptive\ Immunität\ for\ PDF.pdf 2022.10.27\ -\ Vorlesung\ 2\ -\ Adaptive\ Immunität\ for\ PDF_decrypt.pdf
