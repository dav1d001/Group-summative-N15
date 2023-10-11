#!/usr/bin/env bash

while true; do
	echo "Welcome ALU"
	echo "1: Create a student List"
	echo "2: View the student"
	echo "3: Delete"
	echo "4: Update"
	echo "5: Exit"

	read -p "Enter your choice: " CHOICE

	case $CHOICE in
		1)
			read -p "Enter Email: " EMAIL
			read -p "Enter Age: " AGE
			read -p "Enter ID: " ID
			echo "$EMAIL,$AGE,$ID" >> students-list_0923.txt
			echo "Student record created"
			;;

		2)
			cat students-list_0923.txt
			;;
			
		3)
		  	read -p "Enter ID to Delete: " ID
			sed -i "/$ID/d" students-list_0923.txt
			echo "student record deleted"
			;;

		4)
			read -p "Enter Email: " EMAIL
			read -p "Enter AGE: " AGE
			read -p "Enter ID: " ID
			sed -i "/$ID/c\\$EMAIL,$AGE,$ID" students-list_0923.txt
			echo "Student record successfully updated"
			;;

		5)
			exit 0

			

	esac
done


