#!bin/sh
if [ "$1" = "hide" ]
then
	proid=$(xdo id)
	echo $proid >> proidlog
	xdo hide $proid
elif [ "$1" = "show" ]
then
	proid=$(sed '$!d' proidlog)
	xdo show $proid
	sed -i '$d' proidlog
else
	echo "No valid arguments"
fi
