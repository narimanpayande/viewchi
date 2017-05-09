#!/bin/bash		  #!/bin/bash
  while true ; do		  while true ; do
 +   killall tmux
  for entr in viewchi-*.sh ; do		  for entr in viewchi-*.sh ; do
      entry="${entr/.sh/}"		      entry="${entr/.sh/}"
 -    killall tmux		
      rm -rf ~/.telegram-cli/$entry/data/animation/*		      rm -rf ~/.telegram-cli/$entry/data/animation/*
      rm -rf ~/.telegram-cli/$entry/data/audio/*		      rm -rf ~/.telegram-cli/$entry/data/audio/*
      rm -rf ~/.telegram-cli/$entry/data/document/*		      rm -rf ~/.telegram-cli/$entry/data/document/*
