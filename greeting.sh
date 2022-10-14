#!/bin/bash

# get current hour (24 clock format i.e. 0-23)
hour=$(date +"%H")
 
# if it is midnight to midafternoon will say G'morning
if [ $hour -ge 0 -a $hour -lt 12 ]
then
  greet="Good Morning, $USER!"
# if it is midafternoon to evening ( before 6 pm) will say G'noon
elif [ $hour -ge 12 -a $hour -lt 18 ] 
then
  greet="Good Afternoon, $USER!"
else # it is good evening till midnight
  greet="Good evening, $USER!"
fi
 
# display greet
echo $greet

# dispay weather
echo "Today's weather `curl https://wttr.in/berlin`"