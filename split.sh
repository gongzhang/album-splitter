#!/bin/bash

while read line; do
  begin=$(echo $line | cut -d"," -f1)
  end=$(echo $line | cut -d"," -f2)
  title=$(echo $line | cut -d"," -f3)
  echo "$begin, $end, $title"
  echo | ffmpeg -y -i input.mp3 -acodec copy -ss $begin -to $end "output/$title.mp3" > /dev/null 2>&1
done < tracks.txt
