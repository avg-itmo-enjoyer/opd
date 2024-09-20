#!/usr/bin/bash
#Problem Variant: 32749
BASE_DIR=~
if [[ -v LAB0_BASE_DIR ]] && [[ ! -z "$LAB0_BASE_DIR" ]]; then
  BASE_DIR=$LAB0_BASE_DIR
  echo "Set BASE_DIR to: $BASE_DIR"
else
  echo "Use default BASE_DIR: $BASE_DIR"
fi
LOG_DIR=/tmp/s312749
if [[ -v LAB0_LOG_DIR ]] && [[ ! -z "$LAB0_LOG_DIR" ]]; then
  LOG_DIR=$LAB0_LOG_DIR
  echo "Set LOG_DIR to: $LOG_DIR"
else
  echo "Use default LOG_DIR: $LOG_DIR"
fi

first() {
  cd $BASE_DIR
  mkdir lab0
  cd lab0
  mkdir aron3
  cd aron3
  
  #vanillish:
  echo > ./vanillish "Способности:\tHarden Astonish Uproar Icy Wind Mist Avalanche"
  echo >> ./vanillish "Taunt Mirror Shot Acid Armor Ice Beam Hail Mirror Coat Blizzard Sheer"
  echo >> ./vanillish "Cold"
  #poryginz:
  mkdir ./porygonz
  #seismitoad:
  echo > ./seismitoad "satk=9 sdef=8 spd=7"
  #liepard:
  echo > ./liepard "satk=9 sdef=5"
  echo >> ./liepard "spd=11"
  #ursaring:
  echo > ./ursaring "Тип покемона NORMAL NONE"
  #snubbull:
  mkdir ./snubbull

  cd ..
  mkdir beheeyem1
  cd beheeyem1 
  
  #taillow:
  mkdir ./taillow
  #bronzong:
  mkdir ./bronzong
  #burmy:
  mkdir ./burmy
  #kilnklang:
  echo > ./klinklang "Способности:"
  echo >> ./klinklang "Charge Thundershock Gear Grind Bind Charge Beam Autotomize Mirror Shot"
  echo >> ./klinklang "Screech Discharge Metal Sound Shift Gear Lock-On Zap Cannon Hyper"
  echo >> ./klinklang "Beam"
  #politoed:
  echo > ./politoed "weight=74.7 height=43.0 atk=8"
  echo >> ./politoed "def=8"
  #venonat:
  echo > ./venonat "Способности:\tTackle Disable Foresight Supersonic"
  echo >> ./venonat "Confusion Poisonpowder Leech Life Stun Psybeam Sleep Powder"
  echo >> ./venonat "Signal Beam Zen Headbutt Poison Fang Psychic"

  cd ..
  mkdir carvanha2
  cd  carvanha2    

  #lampent:
  echo > ./lampent "Тип покемона"
  echo >> ./lampent "GHOST FIRE"
  #wailmer:
  mkdir ./wailmer
  #trapinch:
  echo > ./trapinch "Ходы:\t Body Slam Bug Bite Double-Edge Grip Drain0"
  echo >> ./trapinch "Earth Power Fury Cutter Giga Drain Mud-Slap Signal Beam Sleep Talk"
  echo >> ./trapinch "Snore Superpower"
  #serperior:
  echo > ./serperior "Тип диеты:\tHerbivore"
  echo >> ./serperior "Phototroph"
  #bidoof:
  echo > ./bidoof "Возможности:\t Overload=6 Surface=6 Jump=2 Power=1"
  echo >> ./bidoof "Intelligence=2"
  #numel
  mkdir ./numel

  cd ..
  #larvitar7:
  echo > ./larvitar7 "weight=158.7 height=24.0 atk=6"
  echo >> ./larvitar7 "def=5"
  #magby4:
  echo > ./magby4 "weight=47.2 height=28.0 atk=8 def=4"
  #wigglytuff9:
  echo > ./wigglytuff9 "Живет"
  echo >> ./vigglytuff9 "Cave Grassland"
  
  ls -AlR $BASE_DIR/lab0
}

second() {
  cd $BASE_DIR/lab0
  chmod 330 ./aron3
  chmod 060 ./aron3/vanillish
  chmod 333 ./aron3/porygonz
  chmod 604 ./aron3/seismitoad
  chmod 444 ./aron3/liepard
  chmod 640 ./aron3/ursaring
  chmod a=x,ug+w,o+r ./aron3/snubbull
  
  chmod a=x,uo+r,go+w ./beheeyem1
  chmod a=rwx ./beheeyem1/taillow
  chmod a=x,u+r,o+w ./beheeyem1/bronzong
  chmod a=x,ug+r,uo+w ./beheeyem1/burmy
  chmod a=r,g-r ./beheeyem1/klinklang
  chmod a-rwx,u+r ./beheeyem1/politoed
  chmod a-rwx,ug+r ./beheeyem1/venonat

  chmod a=rwx,u-w,o-r ./carvanha2
  chmod a=r,u-r,o+w ./carvanha2/lampent
  chmod a+r,u+x,g-r ./carvanha2/wailmer
  chmod 064 ./carvanha2/trapinch
  chmod 400 ./carvanha2/serperior
  chmod 064 ./carvanha2/bidoof
  chmod 771 ./carvanha2/numel

  chmod 064 ./lavitar7
  chmod 062 ./magby4
  chmod 046 ./wigglytuff9

  ls -AlR --color=auto $BASE_DIR/lab0
}

third() {
  cd $BASE_DIR/lab0
  
  ln -s carvanha2 Copy_88
  
  chmod u+r ./carvanha2/lampent
  cat carvanha2/lampent aron3/liepard > magby4_13
  
  chmod u+w ./beheeyem1
  ln -s ./magby4 ./beheeyem1/venomantmagby

  chmod u+w carvanha2
  cp ./lavitar7 ./carvanha2/trapinchlarvitar

  cp ./larvitar7 ./carvanha2/wailmer

  ln ./wigglytuff9 ./carvanha2/trapinchwigglytuff

  cp -R ./carvanha2/ ./beheeyem1/taillow/
  
  ls -AlR --color=auto $BASE_DIR/lab0

  second
}

forth() {
  cd $BASE_DIR/lab0
  
  if [ ! -d $LOG_DIR ]; then
    mkdir $LOG_DIR
  fi

  wc --chars 2>/tmp/s312749/opd-lab0-errors.log ./beheeyem1/* | sort -r
  echo "---"
  ls 2>>/tmp/s312749/opd-lab0-errors.log ./aron3 | sort -dr
  echo "---"
  cat ./magby4 -n | grep --invert-match --ignore-case "gth"
  echo "---"
  wc --chars ./b* ./*/b* | sort -r
  echo "---"
  cat -n 2>&1 \
    ./aron3/seismitoad \
    ./aron3/liepard \
    ./aron3/ursaring \
    ./beheeyem1/klinklang \
    ./beheeyem1/politoed \
    ./beheeyem1/venonat \
    ./carvanha2/lampent \
    ./carvanha2/trapinch | 
    grep --invert-match "Be"
  echo "---"
  wc --chars 1>/tmp/s312749/opd-lab0-output.log 2>/dev/null ./magby4
}

fifth() {
  cd $BASE_DIR/lab0
  
  rm ./magby4
  rm ./aron3/ursaring
  rm ./beheeyem1/venonatmag*
  rm ./carvanha2/trapinchwigglytu*
  rm -rf ./carvanha2
  rm -rf aron3/snubbull

  ls -AlR $BASE_DIR/lab0
}

clean() {
  if [ -d "$BASE_DIR/lab0" ]; then
    chmod -R u=rwx "$BASE_DIR/lab0"
    rm -rf "$BASE_DIR/lab0"
  fi
}

while [[ $# -gt 0 ]]; do
  case "$1" in
  -c|--clean)
    echo "-- Clean lab0 file hierarchy --"
    clean
    ;;
  -1)
    echo "-- 1-st stage started --"
    first
    echo "-- 1-st stage completed --"
    ;;
  -2)
    echo "-- 2-nd stage started --"
    second
    echo "-- 2-nd stage completed --"
    ;;
  -3)
    echo "-- 3-rd stage started --"
    third
    echo "-- 3-rd stage completed --"
    ;;
  -4)
    echo "-- 4-th stage started --"
    forth
    echo "-- 4-th stage completed --"
    ;;
  -5)
    echo "-- 5-th stage started --"
    fifth
    echo "-- 5-th stage completed --"
    ;;
  *)
    echo "Unknown option: $1"
    exit 1
    ;;
  esac
  shift
done
