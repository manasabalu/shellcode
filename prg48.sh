#!/bin/bash
for i in `seq 1 20`
do
  lvcreate -y -L 64M -n imagelv$i images >/dev/null 2>&1
  if [ $? -eq 0 ] #1st if open
  then
      mkdir -p /imagefs$i > /dev/null 2>&1
      if [ $? -eq 0 ] #2nd if open
      then
          mkfs.ext4  /dev/images/imagelv$i >/dev/null 2>&1
          if [ $? -eq 0 ] #3rd if open
          then
              echo "/dev/images/imagelv$i /imagefs$i  ext4   defaults  0 0">>/etc/fstab
              if [ $? -eq 0 ] #4th if open
              then
                  mount /imagefs$i
                  if [ $? -ne 0 ] #5th if open
                  then
                     echo "could not mount the filesystem /imagefs$i"
                  fi  #5th if close
               else
                  echo "could not add entry in /etc/fstab for /imagefs$i"
               fi  #4th if close
          else
              echo "could not create filesystem on /imagefs$i"
          fi  #3rd if close
       else
           echo "could not create directory /imagefs$i"
       fi  #2nd if close
   else
      echo "count not create Logical volume $imagelv$i"
   fi  #1st if close
done  #for loop close
echo "The current state of filesystems are:"
df -h
#End
      
