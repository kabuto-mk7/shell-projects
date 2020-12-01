clear
echo Enter two numbers seperated with a space:
read m n
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
echo $gcd
