clear
echo Enter two numbers seperated with a space:
read m n
case $m in
	''|*[!0-9]*) echo "input 1 is not a number"
	exit ;;
	*) echo "input 1 successful" ;;
esac
case $n in
	''|*[!0-9]*) echo "input 2 is not a number"
	exit ;;
	*) echo "input 2 successful" ;;
esac
while [ $m != $n ]
do
	if [ $m -gt $n ] ; then
		m=`expr $m - $n`
		gcd=$m
	else
		n=`expr $n - $m`
		gcd=$n
	fi
done
echo "gcd of both numbers is $gcd"
