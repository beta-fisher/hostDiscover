#!/bin/bash

echo -e "\e[33m _               _   ___   _                                    \e[0m"
echo -e "\e[33m| |__   ___  ___| |_|  _ \(_)___  ___ _____   _____ _ __ _   _  \e[0m"
echo -e "\e[33m| '_ \ / _ \/ __| __| | | | / __|/ __/ _ \ \ / / _ \ '__| | | | \e[0m"
echo -e "\e[33m| | | | (_) \__ \ |_| |_| | \__ \ (_| (_) \ V /  __/ |  | |_| | \e[0m"
echo -e "\e[33m|_| |_|\___/|___/\__|____/|_|___/\___\___/ \_/ \___|_|   \__, | \e[0m"
echo -e "\e[33m                                                         |___/  \e[0m"
echo ""

#Variables de octetos de red a escanear

o1=""
o2=""
o3=""


read -p "Escriba el primer octeto de su red a escanear:  " o1
read -p "Escriba el segundo octeto de su red a escanear: " o2
read -p "Escriba el tercer octeto de su red a escanear:  " o3

for i in $(seq 2 254); do
     timeout 1 bash -c "ping -c 1 $o1.$o2.$o3.$i > /dev/null 2>&1" && echo "Host $o1.$02.$o3.$i - ACTIVE" &
done; wait
