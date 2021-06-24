varDate="date +%y%m%d-%H%m"
d=$($varDate)

i=ifconfig

g=$($i | grep "inet " | grep -v "127" | sed 's/inet//g' | sed 's/  netmask 255.255.255.0  broadcast *.*.*.*//g')

nmap -v -sS -sU -p 1-65535 $g/24 -O -open -oG ./$d-NMapSubnet.txt 
