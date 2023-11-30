#!/bin/bash

#	Secuirty serach for CVE's in a file
echo please enter text file:
read $infile
echo filename of results?:
read $outfile
awk 'match($0,/CVE-[0-9-]+/){print substr($0,RSTART,RLENGTH)}' $infile | sort | uniq > $outfile
