#!bin/sh
if [ "$1" = "hide" ]
then
	proid=$(xdo id)
	echo $proid >> ~/.config/.proidlog
	xdo hide $proid
elif [ "$1" = "show" ]
then
	proid=$(sed '$!d' ~/.config/.proidlog)
	xdo show $proid
	sed -i '$d' ~/.config/.proidlog
elif [ "$1" = "deshide" ]
then	
	proid=$(xdo id)
	echo $proid >> ~/.config/.desproidlog
	xdo hide $proid
elif [ "$1" = "desshow" ]
then	
	proid=$(sed '$!d' ~/.config/.desproidlog)
	xdo show $proid
	sed -i '$d' ~/.config/.desproidlog
else
	echo "No valid arguments"
fi
