#!/bin/bash

# Instead of making multiple scripts I used one to pull data from the player analysis notes to call the times dates for the script.

# ex. [./DA_Script.sh 1 0310]  

awk -F" " '{print $2" " $3}' ../Player_Analysis/Notes_Player_Analysis | sed -n $1p > temp_time.txt 
awk -F" " '{print $1" " $2" " $5" "$6}' $2_Dealer_schedule | grep -f temp_time.txt >> Dealers_working_during_losses

