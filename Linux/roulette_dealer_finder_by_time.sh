#!/bin/bash

cat $1_Dealer_schedule | awk -F" " '{print $1,$2,$5,$6}'| grep "$2:00:00 $3M"
