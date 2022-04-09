start tor service

echo "Enter IP Range and Subnet ....10.1.1.0/24"
read varRange

echo "Enter first port....."
read varPort1
echo "Enter second port....."
read varPort2

varDate="date +%y%m%d-%H%m"
d=$($varDate)

proxychains nmap -v -sV -p $varPort1-$varPort2 $varRange -O -open -oG ./$d-NAMPSpecifySubnet.txt
 

