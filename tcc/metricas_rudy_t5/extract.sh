#!/bin/sh

for file in *.svg
do
    inkscape -z -f "${file}" -w 1024 -e "${file}.png"
done

for i in *.svg.png
do
    mv "$i" "`echo $i | sed 's/.svg//'`"
done