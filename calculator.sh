clear
echo  "Enter two numbers : "
read a b
echo ""
echo "Enter operation choice : "
echo " 1 - addition "
echo " 2 - subtraction "
echo " 3 - Multiplication "
echo " 4 - Division "
echo " 5 - Modulus "
echo ""
read c
case $c in
	1)res=`echo $a + $b | bc`
	;;
	2)res=`echo $a - $b | bc`
	;;
	3)res=`echo $a \* $b | bc`
	;;
	4)res=`echo "scale=2; $a / $b" | bc`
	;;
	5)res=`echo $a % $b | bc` 
esac
echo ""
echo "result : $res"
echo ""
echo "Press any key to continue"
read w
if test -z "$w"
then
	sh calculator.sh
else
	sh calculator.sh
fi
