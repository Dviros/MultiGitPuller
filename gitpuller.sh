f_banner(){
cat << "EOF"
   _____ _ _   _           _       _    _           _       _            
  / ____(_) | | |         | |     | |  | |         | |     | |           
 | |  __ _| |_| |__  _   _| |__   | |  | |_ __   __| | __ _| |_ ___ _ __ 
 | | |_ | | __| '_ \| | | | '_ \  | |  | | '_ \ / _` |/ _` | __/ _ \ '__|
 | |__| | | |_| | | | |_| | |_) | | |__| | |_) | (_| | (_| | ||  __/ |   
  \_____|_|\__|_|_|_|\__,_|_.__/   \____/| .__/ \__,_|\__,_|\__\___|_|   
 |  _ \        |  __ \      (_)          | |                             
 | |_) |_   _  | |  | |_   ___ _ __ ___  |_|                             
 |  _ <| | | | | |  | \ \ / / | '__/ _ \/ __|                            
 | |_) | |_| | | |__| |\ V /| | | | (_) \__ \                            
 |____/ \__, | |_____/  \_/ |_|_|  \___/|___/                            
         __/ |                                                           
        |___/                                                            

EOF
}

f_error(){
echo
echo "*** Invalid choice or entry. ***"
echo
sleep 2
f_main
}

f_main(){
clear
f_banner
echo "Version 1.1"
echo "Update:"
echo
echo "1.  Information Gathering Tools"
echo "2.  Exploitation Tools"
echo "3.  Reverse Engineering Tools"
echo "4.  Fuzzing Tools"
echo "5.  Misc Tools"
echo "6.  All Tools"
echo
echo -n "Choice: "
read choice

# Check for wrong answer
if [ "$choice" -gt "6" ] || ["$choice" -lt "1"] || ["$choice" 
then
     f_error
fi


case $choice in
     1)
     clear
     f_banner
     echo "Updating Information Gathering Tools..."
     echo
     for i in ~/Desktop/infoGatheringTools/*/.git; do ( echo $i; cd $i/..; git pull; ); done
     echo "DONE"
esac

case $choice in
     2)
     clear
     f_banner
     echo "Updating Exploitation Tools..."
     echo
     for i in ~/Desktop/exploitingTools/*/.git; do ( echo $i; cd $i/..; git pull; ); done
     echo "DONE"
esac

case $choice in
     3)
     clear
     f_banner
     echo "Updating Reverse Engineering Tools..."
     echo
     for i in ~/Desktop/reversingTools/*/.git; do ( echo $i; cd $i/..; git pull; ); done
     echo "DONE"
esac

case $choice in
     4)
     clear
     f_banner
     echo "Updating Fuzzing Tools..."
     echo
     for i in ~/Desktop/fuzzingTools/*/.git; do ( echo $i; cd $i/..; git pull; ); done
     echo "DONE"
esac

case $choice in
     5)
     clear
     f_banner
     echo "Updating Misc Tools..."
     echo
     for i in ~/Desktop/miscTools/*/.git; do ( echo $i; cd $i/..; git pull; ); done
     echo "DONE"
esac

case $choice in
     6)
     clear
     f_banner
     echo "Updating All Tools..."
     echo
     for i in ~/Desktop/fuzzingTools/*/.git; do ( echo $i; cd $i/..; git pull; ); done &
     for i in ~/Desktop/miscTools/*/.git; do ( echo $i; cd $i/..; git pull; ); done &
     for i in ~/Desktop/reversingTools/*/.git; do ( echo $i; cd $i/..; git pull; ); done &
     for i in ~/Desktop/exploitingTools/*/.git; do ( echo $i; cd $i/..; git pull; ); done &
     for i in ~/Desktop/infoGatheringTools/*/.git; do ( echo $i; cd $i/..; git pull; ); done
esac
}
f_main
echo "==================DONE===================="
