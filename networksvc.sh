#Restart Networking to force DHCP IP
service network-manager stop
service network-manager start

i=ifconfig
g=$($i | grep "inet " | grep -v "127" | sed 's/inet//g' | sed 's/  netmask 255.255.255.0  broadcast *.*.*.*//g')
echo $g
