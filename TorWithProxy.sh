echo "update /etc/proxychains.conf with proxy IPs" 
 
macchanger -r -eth0
service  tor status
service tor start 

proxychains firefox

