#!/bin/bash

w="\e[97;1m"
g="\e[92;1m"
nc="\e[0m"
r="\e[31;1m"
# Function to enc a file
enc() {
clear
read -p " infile  : " file
read -p " outfile : " out_file
read -p " pasword : " password
  openssl enc -aes-256-cbc -salt -in "$file" -out "$out_file" -k "$password"
  if [[ $? -eq 0 ]]; then
    echo "File '$file' enced successfully."
  else
    echo "Error encing file '$file'."
  fi
}




# Function to dec a file
dec() {
read -p " infile  : " file
read -p " outfile : " out_file2
read -p " pasword : " password
  openssl enc -aes-256-cbc -d -salt -in "$file" -out "${out_file2}" -k "$password"
  if [[ $? -eq 0 ]]; then
clear
echo
    echo -e "${w}File ${g}'$file' ${w}deced successfully.${nc}"
  else
    echo -e "${r} Error decing file ${g}'$file'. ${nc}"
  fi
}


clear
echo -e "${w}  ________________________ ${nc}"
echo -e "${g}     LUNATIC BACKEND       ${nc}"
echo -e "${w}  ________________________ ${nc}"
echo -e ""
echo -e "${w}  EncDec Versions : AES v7 ${nc} "
echo -e "${w}    _________________ ${nc}"
echo
echo -e "${y} 1. encrypt SALT_AES ${nc}"
echo -e "${y} 2. decrypt SALT_AES ${nc}"
echo
echo
read -p " pilih : " zxzx
case $zxzx in
1) clear ; enc ;;
2) clear ; dec ;;
esac
