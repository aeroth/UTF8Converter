#!/bin/bash
for i in $(find -name '*.php');do
        echo $i
        encoding=$(file -bi $i | sed -e 's/.*[ ]charset=//');
        iconv -f $encoding -t UTF-8 -o $i $i;
done

