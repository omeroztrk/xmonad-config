#!/bin/bash
echo -n  `df -h --output=pcent /dev/nvme0n1p4 | tr -d "Use%"`% "| "

BATVAL=`cat /sys/class/power_supply/BAT0/capacity`
BATSTATUS=`cat /sys/class/power_supply/BAT0/status`

if [[ $BATSTATUS == "Charging" ]]
then
    echo -n "<fc=#00ffff>"
    if   [[ $BATVAL -eq 100 ]] 
    then
        echo -n ""
    elif [[ $BATVAL -gt 90 ]] 
    then
        echo -n ""
    elif [[ $BATVAL -gt 80 ]] 
    then
        echo -n ""
    elif [[ $BATVAL -gt 60 ]] 
    then
        echo -n ""
    elif [[ $BATVAL -gt 40 ]] 
    then
        echo -n ""
    elif [[ $BATVAL -gt 30 ]] 
    then
        echo -n ""
    else
     echo -n ""
    fi
else
    if   [[ $BATVAL -eq 100 ]] 
    then
        echo -n "<fc=#ffff00>"
        echo -n ""
    elif [[ $BATVAL -gt 90 ]] 
    then
        echo -n "<fc=#ffff00>"
        echo -n ""
    elif [[ $BATVAL -gt 80 ]] 
    then
        echo -n "<fc=#ffff00>"
        echo -n ""
    elif [[ $BATVAL -gt 60 ]] 
    then
        echo -n "<fc=#ffff00>"
        echo -n ""
    elif [[ $BATVAL -gt 40 ]] 
    then
        echo -n "<fc=#ffff00>"
        echo -n ""
    elif [[ $BATVAL -gt 30 ]] 
    then
        echo -n "<fc=#ffff00>"
        echo -n ""
    elif [[ $BATVAL -gt 15 ]] 
    then
        echo -n "<fc=#ffff00>"
        echo -n ""
    else
        echo -n "<fc=#ff0000>"
        echo -n ""
    fi
fi

# if [ $BATSTATUS == "Charging" ]
# then
#     echo -n "<fc=#00ffff>"
# else
#     if [ $BATVAL -gt 20 ] 
#     then
#         echo -n "<fc=#ffffff>"
#     else
#         echo -n "<fc=#ff0000>"
#     fi
# fi

echo ""$BATVAL% "</fc>"
