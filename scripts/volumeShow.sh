#!/bin/bash
VOICE_STATE=`awk -F"dB\]\ " '/dB/ { print $2 }' <(amixer sget Master)`
if [[ $VOICE_STATE == "[on]" ]]
then
    echo "蓼" `awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master)` | dzen-default &
else
    echo "遼" `awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master)` | dzen-default &
fi
