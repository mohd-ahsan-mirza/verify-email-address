#!/bin/bash
regex="^([A-Za-z]+[A-Za-z0-9]*((\.|\-|\_)?[A-Za-z]+[A-Za-z0-9]*){1,})@(([A-Za-z]+[A-Za-z0-9]*)+((\.|\-|\_)?([A-Za-z]+[A-Za-z0-9]*)+){1,})+\.([A-Za-z]{2,})+$"
read -p 'Enter Email: ' email
if [[ $email =~ ${regex} ]]; then
	curl https://verify-email.org/home/verify-as-guest/$email
	exit
else
	echo "Invalid email"
	exit
fi