#!bin/sh
if [ "$1" = "hide" ]
then
	proid=$(xdo id)
	echo $proid >> ~/.config/proidlog
	xdo hide $proid
elif [ "$1" = "show" ]
then
	proid=$(sed '$!d' ~/.config/proidlog)
	xdo show $proid
	sed -i '$d' ~/.config/proidlog
else
	echo "No valid arguments"
fi
