#!/bin/sh
#not tested infile/outfile bit
#       Security search for CVE's in a file
#echo please enter text file:
#read $infile
echo filename of results?:
read $outfile
cd resolved-database
printf $outfile
# remove uniq as it seems to remove whole lines
awk 'match($0,/CVE-[0-9-]+/){print substr($0,RSTART,RLENGTH)}' $infile | sort | uniq > $outfile
#awk 'match($0,/CVE-[0-9-]+/){print substr($0,RSTART,RLENGTH)}' *.txt | sort > resolvedv2.txt

#cp resolvedv2.txt ..
