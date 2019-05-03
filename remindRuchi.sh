

LINES=$(cat today.txt | wc -l)


d=$(date '+%Y-%m-%d')
msg=$(grep ${d} today.txt)
lenMsg=${#msg}
echo "$lenMsg"

if [ $lenMsg -lt 2  ]
then
	LINES=$(cat msg.txt | wc -l)
	R_LINE=$(($RANDOM % LINES))
	msg=$(sed -n "${R_LINE}p" msg.txt)
	echo ${R_LINE}

fi



echo "${date} msg: ${msg}"

/usr/bin/notify-send Ruchi "${msg}" --icon niraj.jpg
# /usr/local/bin/terminal-notifier  -message "${msg}" -title "R" -sound "Submarine" 
