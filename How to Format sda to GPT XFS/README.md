# How to Format sda to GPT XFS

```sh
sudo umount /dev/sda*

sudo wipefs -a /dev/sda
sudo parted /dev/sda --script mklabel gpt
sudo parted /dev/sda --script mkpart primary xfs 0% 100%

sudo partprobe /dev/sda
sudo udevadm settle

sudo mkfs.xfs -f -L MY_LABEL /dev/sda1
sudo parted /dev/sda --script name 1 MY_LABEL

udisksctl mount -b /dev/sda1
sudo chown nobody:nogroup $(findmnt -n -o TARGET -S /dev/sda1)
sudo chmod 777 $(findmnt -n -o TARGET -S /dev/sda1)

df -h $(findmnt -n -o TARGET -S /dev/sda1)
```
