#!/bin/sh


#flist=`ls *.png`
flist=${*}

menu_str="="
menu_str="=="

for fname in ${flist}
do
    echo ''
    echo ${menu_str}' '${fname}' '${menu_str}
    echo ''
    echo 'http://zx4all.googlecode.com/svn/wiki/screenshots/'${fname}
done
