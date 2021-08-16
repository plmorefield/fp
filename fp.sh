#! bin/bash

for i in {a..z};do
  parted -s /dev/sd${i} mklabel gpt 
  echo "sd$i step1"

  parted /dev/sd${i} mkpart primary 0% 100%
  sleep 5
  echo "sd$i step2"

  mkfs -t ext4 /dev/sd${i}1
  echo "sd$i step3"
  sleep 1
done

for v in {aa,ab,ac,ad,ae,af,ag,ah,ai,aj};do
  parted -s /dev/sd${v} mklabel gpt 
  echo "sd$v step1"

  parted /dev/sd${v} mkpart primary 0% 100%
  sleep 5
  echo "sd$v step2"

  mkfs -t ext4 /dev/sd${v}1
  echo "sd$v step3"
  sleep 1
done

