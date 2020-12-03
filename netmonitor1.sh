clear
echo "recieved","sent" > output.csv
echo "enter amount of times to read packets"
read max
echo "enter interface name"
read ifn
for i in $(seq 0 1 $max);
do
        rec=`ifconfig $ifn | grep RX | tail -2 | head -1 | cut -d' ' -f 11 `
        sent=`ifconfig $ifn | grep TX | tail -2 | head -1 | cut -d' ' -f 11`
        echo "$rec,$sent" >> output.csv
        sleep 2
        echo "scanning"
done
echo "monitor complete recorded to output.csv"

