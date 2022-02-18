
#!/usr/bin/env bash
#-----------------------------------------------------------------------
#   █████████                                            █████         
#  ███░░░░░███                                          ░░███          
# ███     ░░░  ████████  █████ ████  █████   ██████   ███████   ██████ 
#░███         ░░███░░███░░███ ░███  ███░░   ███░░███ ███░░███  ███░░███
#░███          ░███ ░░░  ░███ ░███ ░░█████ ░███████ ░███ ░███ ░███ ░███
#░░███     ███ ░███      ░███ ░███  ░░░░███░███░░░  ░███ ░███ ░███ ░███
# ░░█████████  █████     ░░████████ ██████ ░░██████ ░░████████░░██████ 
#  ░░░░░░░░░  ░░░░░       ░░░░░░░░ ░░░░░░   ░░░░░░   ░░░░░░░░  ░░░░░░  
#-------------------------------------------------------------------------

if [ $(whoami) = "root"  ];
then
if lspci | grep -E "NVIDIA|GeForce"; then
    	nvidia-xconfig
fi
pacman -S grub-btrfs --noconfirm --needed
# umount /.snapshots/
# rm -rf /.snapshots/
# snapper -c root create-config /
# echo "Enter the Name of user who can Access the snapshots"
# read userna
# echo "yOUCAN EDIT THIS LATER AT /etc/snapper/configs/root"
# sed -i 's/^ALLOW_USERS=""/ALLOW_USERS="'"${userna}"'"/' /etc/snapper/configs/root
# sed -i 's/^TIMELINE_LIMIT_HOURLY="10"/TIMELINE_LIMIT_HOURLY="8"/' /etc/snapper/configs/root
# sed -i 's/^TIMELINE_LIMIT_DAILY="10"/TIMELINE_LIMIT_DAILY="6"/' /etc/snapper/configs/root
# sed -i 's/^TIMELINE_LIMIT_WEEKLY="0"/TIMELINE_LIMIT_WEEKLY="3"/' /etc/snapper/configs/root
# sed -i 's/^TIMELINE_LIMIT_MONTHLY="10"/TIMELINE_LIMIT_MONTHLY="3"/' /etc/snapper/configs/root
# sed -i 's/^TIMELINE_LIMIT_YEARLY="10"/TIMELINE_LIMIT_YEARLY="0"/' /etc/snapper/configs/root
# 
# chmod a+rx /.snapshots/
# systemctl start snapper-timeline.timer
# systemctl enable snapper-timeline.timer
# systemctl start snapper-cleanup.timer
# systemctl enable snapper-cleanup.timer

# echo "Enter the Name of BOOTLOADER installed"
# read bootloader
# if [[ ${bootloader} =~ "grub"  ]]; then
# systemctl start grub-btrfs.path
# systemctl enable grub-btrfs.path
# grub-mkconfig -o /boot/grub/grub.cfg
# fi


# cp -r $HOME/OpenboxInstall/LightdmTheme /usr/share/lightdm-webkit/themes/



sed -i 's/^#greeter-session=example-gtk-gnome/greeter-session=lightdm-webkit-greeter/' /etc/lightdm/lightdm.conf
sed -i 's/^#user-session=default/user-session=openbox/' /etc/lightdm/lightdm.conf


echo "Enter the size of zram(MB)"
echo "YOU CAN EDIT THIS LATER AT /etc/default/zramd"
read zram
sed -i 's/^# MAX_SIZE=8192/MAX_SIZE='"${zram}"'/' /etc/default/zramd

systemctl start grub-btrfs.path
systemctl enable grub-btrfs.path
systemctl enable zramd.service
systemctl enable lightdm
grub-mkconfig -o /boot/grub/grub.cfg


echo "-------------------------------------------------"
echo "                 Run As Root                     "
echo "-------------------------------------------------"
fi


