#!/bin/bash

# ex. [ ./roulette_dealer_finder_by_time_and_game.sh 0310 05 AM texasholdem ]

# enter date in 4 digit format but not including year
# enter time in double digit format
# games: texasholdem, roulette, blackjack


if [ $# -ne 4 ]; then
       echo "incorrect syntax"
       echo "Usage: [Script] <Date><Time><AM/PM><Game>: open script in nano for example"
fi

if [ $4 == roulette ]; then 
         cat $1_Dealer_schedule | awk -F" " '{print $1,$2,$5,$6}'| grep -i "$2:00:00 $3"

fi

if [ $4 == texasholdem ]; then 
         cat $1_Dealer_schedule | awk -F" " '{print $1,$2,$7,$8}'| grep -i "$2:00:00 $3"
fi

if [ $4 == blackjack ]; then 
         cat $1_Dealer_schedule | awk -F" " '{print $1,$2,$3,$4}'| grep -i "$2:00:00 $3"
fi


