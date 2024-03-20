#!/bin/sh
#
#       Security search for CVE's in a file
echo please enter cusotmer CVE text file:
read infile
echo filename of your results?:
read outfile
cd SCG-VE-DSA
printf $outfile
# remove uniq as it seems to remove whole lines, or just keep it and make suer all CVE's are on one line some other way
awk 'match($0,/CVE-[0-9-]+/){print substr($0,RSTART,RLENGTH)}' ../$infile | sort | uniq > $outfile

mv $outfile ..

#TODO
#
#add not resovoled to output file
#done need the outfile part, add not resolved to the infile name
#maybe add NVD link
#https://nvd.nist.gov/vuln/detail/ add before cve
