#!/usr/local/bin/bash

. ./.function2
  
#
   typeset -i TEAMSIZE=5 
   typeset -i TEAMFLOOR=8 
#
   load_array
   echo "ROOMSIZE is: ${ROOMSIZE[*]}"
   echo "ROOMTIME is: ${ROOMTIME[*]}"
#
   typeset    TEAMBGN=10:30 
   typeset    TEAMEND=11:30
   SEARCH_STR=$(search_roomtime $TEAMBGN $TEAMEND)
   ROOM_RESULT=$(search_roomsize $TEAMSIZE $TEAMFLOOR | egrep "(${SEARCH_STR})")
   echo "Closest available room(s) for team of size $TEAMSIZE on floor $TEAMFLOOR at: $TEAMBGN - $TEAMEND are..."
   echo ${ROOM_RESULT} | tr " " \\n | cut -d "|" -f 3
#
   typeset    TEAMBGN=10:55 
   typeset    TEAMEND=10:57
   SEARCH_STR=$(search_roomtime $TEAMBGN $TEAMEND)
   ROOM_RESULT=$(search_roomsize $TEAMSIZE $TEAMFLOOR | egrep "(${SEARCH_STR})")
   echo "Closest available room(s) for team of size $TEAMSIZE on floor $TEAMFLOOR at: $TEAMBGN - $TEAMEND are..."
   echo ${ROOM_RESULT} | tr " " \\n | cut -d "|" -f 3
#
