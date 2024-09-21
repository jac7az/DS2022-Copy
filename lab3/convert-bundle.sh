#!/bin/bash

wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
tar -xzvf lab3-bundle.tar.gz
awk '!/^[[:space:]]*$/' lab3_data.tsv
tr '\t' ',' < lab3_data.tsv > lab3_data.csv
lines=$(cat lab3_data.csv | grep "," | wc -l)
echo "The number of lines is $lines."
tar -czvf converted-archive.tar.gz lab3_data.csv
