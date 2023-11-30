#!/bin/sh
# check cusotomer CVE list against resolved list and outputs the CVE that are resolved into output.txt

#this output.txt is the resolved CVE's
grep -f resolvedv2.txt SR125952242 > output.txt

#thisis not outputing anything?
#while read -r LINE 
#	do grep "$LINE" resolvedv2.txt
#done < SR125952242 > output.txt

#create the resolved report
	cp SR125952242 SRre.txt

#take all the CVE's in output.txt and mark as resolved in report
while read LINE
	do sed -i "s/$LINE/$LINE Resolved/g" SRre.txt
done < output.txt
