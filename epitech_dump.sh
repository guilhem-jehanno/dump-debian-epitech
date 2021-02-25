#!/bin/bash
##
## EPITECH PROJECT, 2021
## undefined
## File description:
## epitech_dump
##

clear
echo -e "Welcome to the unofficial \E[34m{Epitech.}\E[0m dump installation script."
sleep 2
echo "Check if the script is executed with su permissions, please wait..."
sleep 2
if [[ $EUID -ne 0 ]]; then
   echo ""
   echo -e "\E[31m{Error 1}\E[0m - \E[33mThis script must be run as root (sudo ./epitech_dump.sh).\E[0m"
   exit 1
fi
echo ""
echo -e "\E[32mYeah!\E[0m You are ready for installation"
sleep 2
echo ""
echo "----------------------------------------------------"
echo ""
echo -e "\E[33mInstallation of Cmake\E[0m"
echo ""
apt install cmake -y
echo ""
echo -e "\E[32mDone\E[0m"
sleep 5
echo ""
echo "----------------------------------------------------"
echo ""
echo -e "\E[33mInstallation of Valgrind\E[0m"
echo ""
apt install valgrind -y
echo ""
echo -e "\E[32mDone\E[0m"
echo ""
sleep 5
echo ""
echo "----------------------------------------------------"
echo ""
echo -e "\E[33mInstallation of Make\E[0m"
echo ""
apt install make -y
echo ""
echo -e "\E[32mDone\E[0m"
sleep 5
echo ""
echo "----------------------------------------------------"
echo ""
echo -e "\E[33mInstallation of Emacs\E[0m"
echo ""
apt install emacs-nox -y
echo ""
echo -e "\E[32mDone\E[0m"
sleep 5
echo ""
echo "----------------------------------------------------"
echo ""
echo -e "\E[33mAddition of the Epitech header to Emacs\E[0m"
echo ""
cd .extras/epitech-emacs-1.3/
$sh ./INSTALL.sh "local"
cd ../../
sleep 5
echo ""
echo "----------------------------------------------------"
echo ""
echo -e "\E[33mInstallation of Build-Essential\E[0m"
echo ""
apt install build-essential -y
echo ""
echo -e "\E[32mDone\E[0m"
sleep 5
echo ""
echo "----------------------------------------------------"
echo ""
echo -e "\E[33mInstallation of complements for the correct operation of the machine\E[0m"
echo ""
apt install avr-libc -y
echo ""
echo "1 / 2 completed"
echo ""
sleep 5
apt install libnewlib-arm-none-eabi -y
echo ""
echo "2 / 2 completed"
echo ""
echo -e "\E[32mDone\E[0m"
sleep 5
echo ""
echo "----------------------------------------------------"
echo ""
echo -e "\E[33mInstallation of lib-ncurses\E[0m"
echo ""
apt install lib32ncurses5-dev
echo ""
echo -e "\E[32mDone\E[0m"
echo ""