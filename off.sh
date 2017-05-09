for entr in viewchi-*.sh ; do		  for entr in viewchi-*.sh ; do
      entry="${entr/.sh/}"		      entry="${entr/.sh/}"
      tmux kill-session -t $entry		      tmux kill-session -t $entry
 +    killall -9 entry
    done		    done
 -  		 +  killall screen
 -    echo 'Off!'		 +  killall tg
 +  echo 'Off!'
