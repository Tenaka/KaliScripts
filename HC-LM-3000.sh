echo "Enter Path to Password Hash"
read  varHash

echo "Enter Path to Password files (BruteForce)"
read varPass

hashcat -m 3000 $varHash $varPass --force


#hashcat -m 1000 /root/Desktop/MSF/XP/XPClient-1-101.txt /root/Desktop/PW/rockyou.txt --force

