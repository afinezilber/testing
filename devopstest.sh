#!/bin/bash
#Allon Finezilber

mkdir devopsshared_backup

for dir in {1..30}
do
	if [ "$dir" -lt 10 ]; then
			mkdir devopsshared_0$dir
				cd devopsshared_0$dir
				foldername="devopsshared_0"
				file="_file"
				ext=".txt"
				now=$(date +"_%m_%d_%Y")
					for filename in {1..5}
					do
						touch $foldername$dir$file$filename$ext
						if [[ "$filename" == 1 || "$filename" == 3 || "$filename" == 5 ]]; then
							sudo zip devopsshared_0$dir.zip $foldername$dir$file$filename$ext
						fi
					done
				mv devopsshared_0$dir.zip ../devopsshared_backup
				sudo zip ../devopsshared_backup/devopsshared_backup$now.zip ../devopsshared_backup/devopsshared_0$dir.zip
				cd ..
	fi
	
	if [ "$dir" -gt 9 ]; then
			mkdir devopsshared_$dir
				cd devopsshared_$dir
				a="devopsshared_"
				b="_file"
				c=".txt"
				now=$(date +"_%m_%d_%Y")
					for filename in {1..5}
					do
						touch $foldername$dir$file$filename$ext
						if [[ "$filename" == 1 || "$filename" == 3 || "$filename" == 5 ]]; then
							sudo zip devopsshared_$dir.zip $foldername$dir$file$filename$ext
						fi
					done
				mv devopsshared_$dir.zip ../devopsshared_backup
#				sudo zip ../devopsshared_backup/devopsshared_backup$now.zip ../devopsshared_backup/devopsshared_$dir.zip
				cd ..
	fi
done
