if ["S1" = ""]
then 
echo "usage ./ping.sh 10.1.1.0"
echo "example....."
else
for x in `seq 1 254` ; do
ping -c 1 $1.$x | grep "64 Bytes" | cut -d " " -f4 | sed 's/.$//'
done
fi
