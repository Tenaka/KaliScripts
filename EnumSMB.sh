echo "Enter IP of SMB target"
read varhost

echo "Enter User Name"
read varUser

echo "Enter known password"
read varPassword

date=`date '+%y-%m-%d'`

g=$($i | grep "inet " | grep -v "127" | sed 's/inet//g' | sed 's/  netmask 255.255.255.0  broadcast *.*.*.*//g')

enum4linux -U -S -U -M -G -P -d -u $varUser -p $varPassword $varhost > /root/Desktop/Scripts/SMB/enumSMB-$date.txt 
