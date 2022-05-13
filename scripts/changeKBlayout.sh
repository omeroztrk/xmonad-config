#!/bin/bash

LAYOUT=`setxkbmap -query | grep "layout" | cut -d ":" -f2 | xargs`

if [[ $LAYOUT = "us" ]]
then
	setxkbmap tr
elif [[ $LAYOUT = "tr" ]]
then
	setxkbmap us
fi

setxkbmap -query | grep "layout" | cut -d ":" -f2 | xargs | dzen-default &
