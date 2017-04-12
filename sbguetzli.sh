#!/bin/bash

FOLDER="./opt/"
GUETZLI="/usr/local/bin/guetzli"

LIGHTGREEN="\033[1;32m"
LIGHTBLUE="\033[1;34m"
NC="\033[0m"

printf "${LIGHTGREEN}******************************************\n"
printf "sbGuetzli - bash compress jpg\n"
printf "******************************************${NC}\n"


if [ ! -d $FOLDER ]; then
  mkdir -p $FOLDER
fi

for FILE in *.{jpg,jpeg,png} ; do
  if [ -f $FILE ]; then
    $GUETZLI --nomemlimit --verbose --quality 84 $FILE $FOLDER$FILE
    printf "${LIGHTGREEN}Optimizado en ${NC} ${LIGHTBLUE}${FOLDER}${FILE}${NC}"
  fi
done

