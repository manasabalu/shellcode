#!/bin/bash
#program to create vg
read -p "Enter the disk you want to use( do not prefix with /dev. Just provide disk name:" disk
if [ -e /dev/$disk -a -b /dev/$disk ]
then
    lsblk /dev/$disk
    read -p "choose the device from the above list (do not include /dev/in the disk name):" part
    if [ -b /dev/$part ]
    then
        echo "Below are the volume group exists:"
        vgs
        read -p "Enter a new volume group name to be created:" vgname
        vgs|grep -w $vgname>/dev/null 2>&1
        if [ $? -ne 0 ]
        then
        getvg=`pvs -o +vgname /dev/$part --noheading --separator :| cut -f2 -d:`
        if [ -z $getvg ]
        then
            pvcreate -f /dev/$part
            if [ $? -ne 0 ]
            then
               echo "could not create a pv"
               exit
             fi
             vgcreate -f $vgname /dev/$part > /dev/null 2>&1
             if [ $? -ne 0 ]
             then
                 echo "could not create vg"
                 exit
             fi
         else
         echo "The given disk/partition is in used by other volume group $getvg"
         exit
         fi
         fi #End of creation of pv and vg
         read -p "Enter lv name...:" lv
         if [ -z $lv ]
         then
             echo "can not create lv..please provide valid lv name"
             exit
         fi
         read -p "Enter File sysystem size in mb:" size
         if [ -z $size ]
         then
             echo "You have not provide lv size...proceeding with 256MB"
             size=256
         fi
         read -p "Enter Filesystem mount point:" mp
         if [ -d $mp ]
         then
           echo "mounting point exists"
         else
            mkdir -p $mp >/dev/null 2>&1
         fi
         lvcreate -y -n $lv -L ${size}M $vgname /dev/$part > /dev/null 2>&1
         if [ $? -eq 0 ]
         then
             mkfs.ext4 /dev/$vgname/$lv >/dev/null 2&1
         fi
         grep $mp /etc/fstab >/dev/null 2>&1
         if [ $? -eq 0 ]
         then
            echo "Entry exists in /etc/fstab for $mp mount point...skipping the mount"
            mount -a
         else
            echo "/dev/$vgname/$lv  	$mp  	ext4 	defaults 	0 0">> /etc/fstab
            mount -a
         fi
    else
       echo "Invalid device or partition selected..Return the program...Existing.."
   fi
else
   echo "The disk is invalid... Existing"
fi
