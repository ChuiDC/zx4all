#!/bin/sh

bmp2png=imlib2_conv

for fname in `ls *bmp`
do
    ${bmp2png} ${fname} `basename ${fname} .bmp`.png
done

flist=`ls *.png`

for fname in ${flist}
do
    echo '<img src="'${fname}'" alt="'${fname}'" />'
    echo '</br>'
done
