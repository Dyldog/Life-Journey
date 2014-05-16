while read line
do
	if [[ -n $line ]]; then
		echo "<string>"$line"</string>" >> "/Users/Dylan/Programming/iOS/1st Party/Apps/[ Personal ]/life-journey/Misc. Files/WIWY2Fixed.txt"
	fi
done < "/Users/Dylan/Programming/iOS/1st Party/Apps/[ Personal ]/life-journey/Misc. Files/WIWY2.txt"