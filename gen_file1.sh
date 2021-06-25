#!/bin/bash
rm file1.txt
for i in {1..1000}
do
    Line=""
    WhatToDo=$((RANDOM % 3))
    if (($WhatToDo == 0)); then
        Line+="coco"
        #printf "%s" "coco" >> file1.txt
    elif (($WhatToDo == 1)); then
        Line+="cucu"
        #printf "%s" "cucu" >> file1.txt
    fi
    Line+="$(head -c 10 /dev/urandom | tr -dc 'a-zA-Z0-9')"
    if [[ "$Line" == "" ]]; then
        Line+="empty"
    fi
    #head -c 10 /dev/urandom | tr -dc 'a-zA-Z0-9' >> file1.txt
    printf "%s\n" "$Line" >> file1.txt
done

