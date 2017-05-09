COUNTER=0		  COUNTER=0
  while [  $COUNTER -lt 5 ]; do		  while [  $COUNTER -lt 5 ]; do
  kill $(pgrep telegram-cli)		  kill $(pgrep telegram-cli)
 -  ./tg -p viewchi-8 -s bot.lua		 +  ./tg -s bot.lua
  sleep 0.1		  sleep 0.1
  done		  done
