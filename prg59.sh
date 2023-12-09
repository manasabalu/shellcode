#!/bin/bash
#create users listed in names.txt
pass=welcome@01
count=0
exec <names.txt
while read user
do
   useradd -c "user id for $user -created by script" $user >/dev/null
   echo "$user:$pass"|chpasswd>/dev/null
   chage -d0 $user>/dev/null
   ((count++))
done
echo "Total $count records processed"
#End
