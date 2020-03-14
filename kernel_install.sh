BuildDir=`pwd`
VersionName=`basename $BuildDir`
sudo mv ${BuildDir} /usr/src/
cd /usr/src/${VersionName} 
sudo make install
sudo mkinitramfs -o /boot/initrd.img-4.18.14 
sudo update-initramfs -c -k 4.18.14
sudo update-grub2

