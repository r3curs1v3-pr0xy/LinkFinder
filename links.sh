#! /bin/bash

if [ "$1" = "linkfinder" ]; then
    cd ./tools/LinkFinder/
    for i in `cat $2_jss.txt`;do echo =============== $i ================ >> $2_links.txt && python3 linkfinder.py -i $i -o cli >> $2_links.txt; done
    rm $2_jss.txt
    
fi


if [ "$1" = "subdomains" ]; then
    cd ./tools/LinkFinder/
    for i in `cat $2_Subjss.txt`;do echo =============== $i ================ >> $2_Sublinks.txt && python3 linkfinder.py -i $i -o cli >> $2_Sublinks.txt; done
    rm $2_Subjss.txt
    
fi
