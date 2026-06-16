#!/bin/bash
# Perintah olah data praktikum sesi 5
awk -F, 'NR>1 {print tolower($6)}' data.csv | sort | uniq -c > output/soal1.txt
grep '@gmail.com' data.csv > output/gmail-customers.csv
awk -F, '!seen[$3]++' data.csv > output/clean-customers.csv
