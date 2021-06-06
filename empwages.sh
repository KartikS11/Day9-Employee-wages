#!/bin/bash

echo "Welcome to Employee Wage Computation Program on Master Branch"

wagePerHr=20
fullHr=8
partHr=4
wage=0

isAbsent=0
isPart=1
isFull=2
day=1

while [[ $day -le 20 ]]; do
	attendence=$((RANDOM%3))
case $attendence in

	0)wage=$(($wage+0))
	  ;;
	1)wage=$(( $wage+ ($wagePerHr*$partHr) ))
	  ;;
	2)wage=$(( $wage+ ($wagePerHr*$fullHr) ))
	  ;;
	3)echo "Attendence Error"
esac
((day++))
done

echo "Wage for a month(i.e. 20 days) = $wage"
