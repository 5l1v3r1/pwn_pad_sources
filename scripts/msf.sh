#!/bin/bash
# Script to run msfconsole with no flags
# Set the prompt to the name of the script
PS1=${PS1//@\\h/@msfconsole}
clear

printf "\n[!] Starting Metasploit.. This is gonna take a sec..\n"
f_hangup(){
  pkill -f /usr/bin/msfconsole
  trap - SIGHUP
  exit 0
}

trap f_hangup SIGHUP

msfconsole

