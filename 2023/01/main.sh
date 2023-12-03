#!/bin/bash

sum=0

while read -r line; do
	num=$(echo -n "$line" | tr -dc '0-9' | sed -E "s/^([0-9]).*([0-9])$/\1\2/")
	[ "$num" -le 9 ] && num=${num}${num}

	sum=$((sum + num))

	echo "$num $sum"
done <input

echo "Sum is: $sum"
