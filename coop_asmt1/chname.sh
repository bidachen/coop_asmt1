
for file in `ls *.txt`
do
	fileLine=`cat $file | wc -l`
	if [ $fileLine -eq 0 ]
	then
		rm $file
	elif [ $fileLine -gt 0 -a $fileLine -lt 10 ]
	then
		mv $file short_$file
	elif [ $fileLine -ge 10 -a $fileLine -le 20 ]
	then
		mv $file medium_$file
	else
		mv $file long_$file
	fi
done

