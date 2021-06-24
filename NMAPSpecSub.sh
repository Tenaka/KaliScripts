echo "Enter IP Range and Subnet ....10.1.1.0/24"
read varRange

echo "Enter Port to scan from....."
read varPort1
echo "Enter end Port....."
read varPort2

varDate="date +%y%m%d-%H%m"
d=$($varDate)

i=ifconfig

g=$($i | grep "inet " | grep -v "127" | sed 's/inet//g' | sed 's/  netmask 255.255.255.0  broadcast *.*.*.*//g')

nmap -v -sS -sU -p $varPort1-$varPort2 $varRange -O -open -oG ./$d-NAMPSpecifySubnet.txt 
