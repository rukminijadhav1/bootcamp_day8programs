#!/bin/bash -x

isPartTime=1
isFulltime=2
empRatePerHr=20
numOfWorkingDays=20
maxRateInMonth=100

totalEmpHr=0
totalWorkingDays=0

function getWorking()
{
	case $randomCheck in 
				$isFullTime )
						empHr=8
				;;
				$isPartTime  )
						empHr=4
				;;
				*)
						empHr=0
				;;
	esac
}

while [[ $totalEmpHr -lt $maxRateInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	getWorking $randomCheck
	totalEmpHr=$(($totalEmpHr+$empHr))
done
totalsalary=$(($totalEmpHr*$empRatePerHr)) 



