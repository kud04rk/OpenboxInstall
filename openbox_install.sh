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
pacman -Sy --noconfirm

echo "-------------------------------------------------"
echo "          Installing additional Packages         "
echo "-------------------------------------------------"
PKGS=(
'rsync'
'mesa' # Essential Xorg First
'xorg'
'xorg-apps'
'xorg-drivers'
'xorg-xkill'
'xorg-xinit'
'xterm'
'alsa-plugins' # audio plugins
'alsa-utils' # audio utils
'ark' # compression
'bluedevil'
'breeze'
'breeze-gtk'
'bridge-utils'
'code' # Visual Studio code
'dtc'
'egl-wayland'
'exfat-utils'
'extra-cmake-modules'
'flex'
'fuse2'
'fuse3'
'fuseiso'
'gamemode'
'gcc'
'gimp' # Photo editing
'gparted' # partition management
'gst-libav'
'gst-plugins-good'
'gst-plugins-ugly'
'haveged'
'jdk-openjdk' # Java 17
'kitty'
'layer-shell-qt'
'libdvdcss'
'lsof'
'lutris'
'lzop'
'm4'
'milou'
'ntfs-3g'
'okular'
'openbsd-netcat'
'oxygen'
'p7zip'
'patch'
'pkgconf'
'powerdevil'
'powerline-fonts'
'print-manager'
'pulseaudio'
'pulseaudio-alsa'
'pulseaudio-bluetooth'
'python-notify2'
'python-psutil'
'python-pyqt5'
'python-pip'
'qemu'
'snapper'
'spectacle'
'steam'
'swtpm'
'synergy'
'terminus-font'
'ufw'
'usbutils'
'vim'
'virt-manager'
'virt-viewer'
'wine-gecko'
'wine-mono'
'winetricks'
'xdg-user-dirs'
'zeroconf-ioslave'
'xfce4-power-manager'
'inkscape'
'nm-applet'
'lightdm'
'gvfs'
'gvfs-smb'
'gvfs-nfs'
'npm'
'flatpak'
)
#installing additional packages
for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done




echo -e "\nINSTALLING AUR SOFTWARE\n"
# You can solve users running this script as root with this and then doing the same for the next for statement. However I will leave this up to you.

echo "CLONING: YAY"
cd ~
git clone "https://aur.archlinux.org/yay.git"
cd ${HOME}/yay
makepkg -si --noconfirm
cd ~
PKGS=(
'autojump'
'brave-bin' # Brave Browser
'dxvk-bin' # DXVK DirectX to Vulcan
'github-desktop-bin' # Github Desktop sync
'ocs-url' # install packages from websites
'snap-pac'
'zramd'
'python'
'psmisc'
'xorg-server'
'xorg-xrandr'
'xorg-xprop'
'xorg-xwininfo'
'imagemagick'
'ffmpeg'
'wireless_tools'
'openbox'
'brightnessctl'
'nitrogen'
'dunst'
'tint2'
'lxsession'
'xclip'
'scrot'
'mpc'
'thunar'
'thunar-archive-plugin'
'thunar-volman'
'ffmpegthumbnailer'
'tumbler'
'w3m'
'viewnior'
'mpv'
'pavucontrol'
'parcellite'
'gsimplecal'
'neofetch'
'htop'
'xsettingsd'
'xautolock'
'obmenu-generator'
'perl-gtk3'
'picom-git'
'rofi'
'playerctl'
'spicetify-cli'
'geany'
'spotify'
'web-greeter'
'appimagelauncher'
'lxappreance-obconf'
'downgrade'
'auto-cpufreq'
'timeshift-bin'
'timeshift-autosnap'
#'lightdm-webkit-theme-osmos'
)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done



#switching to snapper for better usefulness with btrfs
# echo "CLONING: Timeshift"
# cd ~
# git clone "https://aur.archlinux.org/timeshift.git"
# cd ${HOME}/timeshift
# makepkg -si --noconfirm
# cd ~


echo " enter the name of theme you want to install"
echo "options (saber)"
read themeinstall
if [[ ${themeinstall} =~ "saber" ]]; then
echo "installing addital packages for themes"
PKGS=(
'awesome-terminal-fonts'
'lightly-git'
'lightlyshaders-git'
'mangohud' # Gaming FPS Counter
'mangohud-common'
'snapper-gui-git'
'ttf-droid'
'ttf-hack'
'ttf-meslo' # Nerdfont package
'ttf-roboto'
)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done


cd ~
wget https://github.com/JezerM/web-greeter/archive/refs/tags/3.4.0.tar.gz
tar -xvf 3.4.0.tar.gz
cd web-greeter-3.4.0
sudo make install
cd ~

git clone https://github.com/smsriharsha/leafpad.git
cd leafpad
./configure
make
sudo make install-strip
cd ~

cd ~
git clone https://github.com/smsriharsha/Openbox_Dotfiles.git
rsync -avxHAXP --exclude '.git*' --exclude 'LICENSE' --exclude '*.md' $HOME/Openbox_Dotfiles/dotfiles/. ~/

cd $HOME/.icons
tar -xJf $HOME/.icons/Papirus-Custom.tar.xz
tar -xJf $HOME/.icons/Papirus-Dark-Custom.tar.xz
tar -xvf $HOME/.icons/capitaine-cursors.tar.gz
sudo ln -vs $HOME/.icons/Papirus-Custom /usr/share/icons/
sudo ln -vs $HOME/.icons/Papirus-Dark-Custom /usr/share/icons/
sudo ln -vs $HOME/.icons/capitaine-cursors /usr/share/icons/


ln -vs $HOME/.kitty-themes/themes/crusedo.conf $HOME/.config/kitty/theme.conf
cd ~


# export PATH=$PATH:~/.local/bin
# cp -r $HOME/OpenboxInstall/dotfiles/* $HOME/.config/
#

# nody greeter for lightdm theme

# git clone https://github.com/JezerM/nody-greeter.git
# cd nody-greeter
# npm install
# npm run rebuild
# npm run build
# node make install


git clone https://github.com/smsriharsha/LightdmTheme.git
sudo cp -r $HOME/LightdmTheme /usr/share/web-greeter/themes/

sudo npm install -g @genzyy/anime-cli

flatpak install flathub io.github.celluloid_player.Celluloid

flatpak install flathub org.onlyoffice.desktopeditors

flatpak install flathub com.github.wwmm.pulseeffects

sudo pacman -S zsh && chsh -s $(command -v zsh) --noconfirm --needed
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions

echo "-------------------------------------------------"
echo "          Installing flatpak Packages         "
echo "-------------------------------------------------"

else
export PATH=$PATH:~/.local/bin
fi
echo "-------------------------------------------------"
echo "    Now run the enabling_services.sh as root     "
echo "               sudo -su root                     "
echo "-------------------------------------------------"
