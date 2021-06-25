#!/bin/bash
tail -n 40 file1.txt > file2.txt
head -n 10 file2.txt > file3.txt
grep "coco" file2.txt | sed "s/coco/cucu/g" | head -n 3 >> file3.txt
cat file3.txt | sort | uniq -c > tmp.txt
cat tmp.txt > file3.txt
rm tmp.txt
