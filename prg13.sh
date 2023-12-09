#!/bin/bash
echo "Below are the volume groups in this system - `hostname`"
vgs -o VG_NAME --noheading
read -p "Enter an vg name from the above list to print lvs in it:" vgname
echo "Logical Volumes in the given $vgname are below:"
lvs $vgname --noheading -o LV_NAME
#End of the script
