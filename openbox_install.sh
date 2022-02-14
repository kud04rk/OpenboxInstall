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
'rxvt-unicode-truecolor-wide-glyphs'
'xclip'
'scrot'
'mpd'
'mpc'
'thunar'
'thunar-archive-plugin'
'thunar-volman'
'ffmpegthumbnailer'
'tumbler'
'w3m'
'ncmpcpp'
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
'celluloid' # video players
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
'picom'
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
'playerctl'
'lightdm'
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
'timeshift-bin'
'timeshift-autosnap'
'lightdm-webkit-theme-osmos'
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

# export PATH=$PATH:~/.local/bin
# cp -r $HOME/OpenboxInstall/dotfiles/* $HOME/.config/
rsync -avxHAXP --exclude '.git*' --exclude 'LICENSE' --exclude '*.md' dotfiles/ ~/

pushd ~/.icons/ && \
    tar -xJf Papirus-Custom.tar.xz && tar -xJf Papirus-Dark-Custom.tar.xz && \
    sudo ln -vs ~/.icons/Papirus-Custom /usr/share/icons/
    sudo ln -vs ~/.icons/Papirus-Dark-Custom /usr/share/icons/
popd
sudo pacman -S zsh && chsh -s $(command -v zsh) --noconfirm --needed
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions

else
export PATH=$PATH:~/.local/bin
fi
echo "-------------------------------------------------"
echo "    Now run the enabling_services.sh as root     "
echo "               sudo -su root                     "
echo "-------------------------------------------------"