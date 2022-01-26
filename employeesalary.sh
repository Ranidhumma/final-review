#!/bin/bash -x

Total_Working_Days =20
Emp_Per_Hr_salary=30
totalsalary=0
for ((day=0 ; day<20; day++))
do

isPresent=$((RANDOM%2))
  case $isPresent in
  0) 
  echo  "Absent"
    emp_Working_Hr=0
   ;;
   1)
    echo "Present"
     emp_Working_Hr=8
   ;;
   *)
    echo "invalid"
   ;;
   esac
salary_array[$day]=$(($emp_Working_Hr*$Emp_Per_Hr_salary))
totalsalary=$(($totalsalary + ${salary_array[$day]}))

done
echo $totalsalary
echo daybyday salary of araray ${salary_array[@]}










