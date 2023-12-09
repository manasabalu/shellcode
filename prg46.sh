#!/bin/bash
#print number of volume groups in this system
#Also print number of logical volumes for each vg
count=0 #vgcount sent to zero as initial value
for i in `vgs -o vgname --noheading`
do
  ((count++))
done
echo "There are $count volume groups in this system $(hostname)"
#print number of logical volumes. for every VG, get the lvs count
t=0 #total lv count set to zero
for i in `vgs -o vgname --noheadin`
do
  lcount=0 #lcount is to found number of lvs. set its initial value to zero
  for j in `lvs $i -o lvname --noheading` #for every vg, count number of lvs
  do
    ((lcount++))
  done #inner for loop ends here
  echo "Found $lcount lvs in $i volume group"
  t=`expr $t + lcount`
done #outer loop ends
echo "The number of total logical volumes are $t"
#End of the script
