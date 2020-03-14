mkdir -p ~/source/linuxKernel/linux-${KERNEL_VERSION}
cd ~/source/linuxKernel
tar xf ~/source/src/linux-${KERNEL_VERSION}.tar.xz 
cd linux-${KERNEL_VERSION}
cp /boot/config-`uname -r` ./.config
make menuconfig
