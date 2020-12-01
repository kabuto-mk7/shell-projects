clear
echo "enter path to file 1"
read a
if [ -f $a ]
	then
	echo "file found"
else
	echo "file does not exist please try again"
	exit
fi
echo "enter path to file 2"
read b
if [ -f $b ]
	then
	echo "file found"
else
	echo "file does not exist please try again"
	exit
fi
a1=$(stat --format=%s $a)
b1=$(stat --format=%s $b)
if [ "$a1" -eq "$b1" ]
	then
	echo "both files are of equal size, file 1 has a size of $a1 and file 2 has a size of $b1"
elif [ "$a1" -gt "$b1" ]
	then
	echo "file 1 has a size of $a1 and contains more lines than file 2 with a size of $b1"
elif [ "$b1" -gt "$a1" ]
	then
	echo "file 2 has a size of $b1 and contains more lines than file 1 with a size of $a1"
else
	echo "test"
fi
