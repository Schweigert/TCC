#!/bin/sh

for file in *.svg
do
    inkscape -z -f "${file}" -w 1024 -e "${file}.png"
done