#!/bin/bash

cd

echo "Do you want open a folder [S / n] ?"
read answer

#loop
while [ $answer != "n" ];
	do
		#clean the terminal
		clear
		#store path in actualpath variable
		actualpath=$(pwd)
		# showing path actual
		echo "You're here: $actualpath"
		echo .
		echo .
		echo .
		#options navigations
		echo "Content: "
		ls
		echo .
		echo .
		echo .
		echo "================ OPTIONS ================"
		echo "Press 1 - To turn back (cd ../)"
		echo "Press 2 - To open a folder"
		echo "Press 3 - To open or create a file with nano in this folder"
		echo "Press 4 - To open a terminal here and finish the process"
		# taking answer and storing it in option variable
		read option
		#cases to each option
		case $option in
			"1")
				cd ../
			;;
			"2")
				# taking answer and storing it in folderName variable
				echo "Which folder do you want to open in this directory?"
				read folderName
				#formating the value
				folderPath="./$folderName"
				#verifying
				if [ -d "$folderName" ];
				then
					cd $folderPath
				else
					echo "[ERROR] please make sure you typed it correctly and try again"
				fi
			;;
			"3")
				echo "Write a name file of this directory (write with file extension ) ?"
				read fileName
				
				nano $fileName
			;;
			"4")
				/bin/bash
			;;
		esac
		
		echo .
		echo .
		echo .
		echo "Do you want open a folder [S / n] ?"
		read answer
	done
