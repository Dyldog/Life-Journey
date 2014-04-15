while read line
do
	if [[ -n $line ]]; then
		echo "<string>"$line"</string>" >> "/Users/Dylan/Desktop/Attributes.txt"
	fi
done < "/Users/Dylan/Desktop/BadAttributes.txt"