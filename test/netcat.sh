#!/bin/bash

# Current time in milliseconds
now=$(($(date +%s%N)/1000000))
metric=load_value_test
value=42
host=localhost
port=4242

for i in {1..100}; do 
    echo "put $metric $now $i host=hn-$i" | nc -v -w 10 $host $port
done
