#!/bin/bash

if command -v git > /dev/null;then echo [+] git installed;else echo "[-] git not installed...exiting" && exit;fi
if command -v docker > /dev/null;then echo [+] docker installed;else echo "[-] docker not installed...exiting" && exit;fi
if command -v docker-compose > /dev/null;then echo [+] docker-compose installed;else echo "[-] docker-compose not installed...exiting" && exit;fi

wget https://s3.amazonaws.com/botsdataset/botsv1/splunk-pre-indexed/botsv1_data_set.tgz -O apps/botsv1_data_set.tgz
cd apps

for i in $(ls *.tgz);do tar -xvf $i;done

git clone https://github.com/splunk/SA-ctf_scoreboard.git
git clone https://github.com/splunk/SA-ctf_scoreboard_admin.git

