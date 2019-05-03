
LINES=$(cat today.txt | wc -l)

if [ $LINES == 0 ]
then
	LINES=$(cat msg.txt | wc -l)
	R_LINE=$(($RANDOM % LINES))
	msg=$(sed -n "${R_LINE}p" msg.txt)
	echo ${R_LINE}
else
   msg=$(cat today.txt)
fi



echo "msg: ${msg}"


/usr/local/bin/terminal-notifier  -message "${msg}" -title "R" -sound "Submarine" 
