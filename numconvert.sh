clear
echo "enter a decimal number"
read a
case $a in
	''|*[!0-9]*) echo "input is not a number"
	exit ;;
	*) echo "input successful" ;;
esac
echo decimal $a
c=$(echo "obase=2;$a" | bc)
echo binary $c
d=$(echo "obase=8;$a" | bc)
echo octal $d
e=$(echo "obase=16;$a" | bc)
echo hexadecimal $e
