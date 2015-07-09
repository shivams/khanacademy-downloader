#!/bin/bash

curl "$1" | hxnormalize -xe | hxselect div.contents-box li.progress-item a | grep -oP 'href="\K.+?(?=")' | grep "/v/" | while read -r line;
do
	link="https://www.khanacademy.org""$line"
	curl "$link" | grep link | grep youtube | grep video | grep -oP 'href="\K.+?(?=")' | xargs youtube-dl 
done

