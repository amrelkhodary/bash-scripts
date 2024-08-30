#!/bin/bash
#this is a script to check the validity of user data
#it checks if the email is valid and whether the user has an odd or
#even ID
#if the email is valid, print the name alongside whether the user has an odd
#or even id, if not, inform the user

database=$1
line_count=$(wc -l < $database)
current_line=""
current_line_count=2
name=""
email=""
id=""
invalidExists=0
email_regex="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
check_line() {
	#this function validates a specific line
	current_line=$(sed -n "${current_line_count}p" $database)
	IFS=", " read -r name email id <<< "$current_line"
	if [[ $email =~ $email_regex ]] 
	then
		echo "'${email}' is valid!"
		if (( id % 2 == 0 ))
		then
			echo "'${id}' is even"
		else
			echo "'${id}' is odd"
		fi
	else
		echo "'${email}' is invalid"
		((invalidExists=1))
	fi
	echo ""
}


for i in $(seq 2 $line_count)
do
	check_line
	(( current_line_count++ ))

done

if [ $invalidExists -eq 0 ]
then
	exit 0
else
	exit 1
fi
