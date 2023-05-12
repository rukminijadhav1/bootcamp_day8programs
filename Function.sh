#!/bin/bash -x

function my_func()
{
	result=$(($a*$b))
	echo $result
}
echo "enter 2 no's: "
read a
read b
my_func $a $b
echo "miltiplied values are: " $result
