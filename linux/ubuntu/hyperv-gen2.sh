#!/bin/sh

#disable on hyperv (quit mode has problems with hyper-v graphics)
sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT=\"quiet\"/GRUB_CMDLINE_LINUX_DEFAULT=\"\"/g' /etc/default/grub 
update-grub

# gen 2 EFI fix - see https://docs.microsoft.com/en-us/windows-server/virtualization/hyper-v/supported-ubuntu-virtual-machines-on-hyper-v
# cp -r /boot/efi/EFI/ubuntu/ /boot/efi/EFI/BOOT
echo "Content of [/boot/efi/EFI/] is:"
ls /boot/efi/EFI/
echo "Content of [/boot/efi/EFI/boot] is:"
ls /boot/efi/EFI/BOOT
echo "Content of [/boot/efi/EFI/ubuntu] is:"
ls /boot/efi/EFI/ubuntu
# mv /boot/efi/EFI/BOOT/shimx64.efi /boot/efi/EFI/BOOT/bootx64.efi

reboot