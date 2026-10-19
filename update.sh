#!/bin/bash
terminal=#put your terminal emulator here. kitty in my case.
clear
echo "######################################################"
echo "#################### update.sh #######################"
echo "######################################################"
echo ""
Fdate=$HOME/.config/hypr/scripts/.date.txt
ping -c 2 9.9.9.9 && if [ -e "$Fdate" ]
then
  Ldate=$(cat "$Fdate")
  Tdate=$(date +%Y-%m-%d)
  echo "Last system update:" $Ldate
  echo "Today's date:      " $Tdate
  if [ "$Ldate" = "$Tdate" ]
  then
    echo "System is already up to date."
  else
    $terminal zsh -c "echo Last update $Ldate && echo Date $Tdate && sudo pacman -Syu; exec zsh"
    date +%Y-%m-%d > "$Fdate"
  fi
else
  Tdate=$(date +%Y-%m)
  DTdate=$(date +%d)
  DYdate=$(( $DTdate - 1 ))
  echo $Tdate"-"$DYdate > "$Fdate"
fi
