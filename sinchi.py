redis = redis.Redis('localhost')		  redis = redis.Redis('localhost')
  id = input("Enter viewchi Number (1,2,3,4,5,...) : ")		  id = input("Enter viewchi Number (1,2,3,4,5,...) : ")
  source = os.popen("cat ./bot.lua").read()		  source = os.popen("cat ./bot.lua").read()
 -launcher = """while true; do		 +launcher = """#!/bin/bash 
 +COUNTER=0
 +while [  $COUNTER -lt 5 ]; do
 +kill $(pgrep telegram-cli)
    ./tg -p viewchi-{} -s bot.lua		    ./tg -p viewchi-{} -s bot.lua
 +sleep 0.1
  done""".format(id,id)		  done""".format(id,id)
  newlauncher = open("viewchi-{}.sh".format(id),"w")		  newlauncher = open("viewchi-{}.sh".format(id),"w")
  newlauncher.write(launcher)		  newlauncher.write(launcher)
  newlauncher.close()		  newlauncher.close()
  os.popen("chmod 777 viewchi-{}.sh".format(id))		  os.popen("chmod 777 viewchi-{}.sh".format(id))
 -print("Done!\nNew viewchi Created...\n viewchi ID : {}\nRun : ./viewchi-{}.sh".format(id,id)) 		 +print("Done!\nNew viewchi Created...\n viewchi ID : {}\nRun : ./viewchi-{}.sh".format(id,id))
