if [ "$KDEWM" = "/usr/bin/i3" ]
then
    export LELX="in i3"
    compton --config ~/.config/compton-plasma-i3.conf &
else
    export LELX="in kwin"
fi

