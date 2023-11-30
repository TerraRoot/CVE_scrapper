#!/bin/sh

#       Security search for CVE's in a file
cd resolved-database
# remove uniq as it seems to remove whole lines?
awk 'match($0,/CVE-[0-9-]+/){print substr($0,RSTART,RLENGTH)}' *.txt | sort | uniq > resolvedv2.txt
#awk 'match($0,/CVE-[0-9-]+/){print substr($0,RSTART,RLENGTH)}' *.txt | sort > resolvedv2.txt

cp resolvedv2.txt ..
