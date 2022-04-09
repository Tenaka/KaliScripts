#john the txt file
#john SMBv2-NTLMv2-SSP-10.1.1.1.txt --wordlist=/usr/share/wordlists/rockyou.txt 

cd /usr/share/wordlists/
ls

echo "Enter Path to Wordlist"
echo "Default path and name of wordlist /usr/share/wordlists/*"
echo " "
read varList

cd /usr/share/responder/logs
ls -l
pwd
echo " "
echo "Enter Responder path and file to crack"
read  varHash
echo " "


john /usr/share/responder/logs/$varHash --wordlist:/usr/share/wordlists/$varList
john --show $varHash

