# OpenboxInstall
This is a simple customizable script to install a new style of desktop enviroment rather your KDEs and Gnomes....

This is a complete desktop environment experince made from openbox.

This is to be installed after the base install of Arch linux.

Here is my repo to install the same.
https://github.com/smsriharsha/ArchBaseInstall.git

The script uses these dot files:
https://github.com/smsriharsha/Openbox_Dotfiles.git

# NOTE:
Most of the Dotfiles and scritps are from various sources and I have made my tweaks to enhance it to my preference.

I have creditted all the creators in the code and in this readme file.

# Features
<details>
  <summary><strong>Packages</strong></summary>
  - Please have a look at the Packages that are being istalled running the script. 
  - Almost all the packages are essential for the working of the environment.
  - Only remove the packages after install complete install.
    </details>

<details>
  <summary><strong>Audio</strong></summary>
  - Currently the script uses pulse audio. Pipewire will be implemented in the near future.
  - Pulse effects are also installe as a flatpak for cusotmization
  - Spotify is used as the default Music player
  
</details>

<details>
  <summary><strong>Flatpak,AppImages Discover</strong></summary>
  - This supports flatpak, App images for non essential packages(Packages that do not break the install)  and Discover is used to manage the faltpaks.
  
</details>

<details>
  <summary><strong>Auto Cpu Freq</strong></summary>
  - This is enabled by default and can be changed later
  
</details>

<details>
  <summary><strong>Backups</strong></summary>
  - Timeshift backups are enabled by default and accesible from grub
  - snapper is also installed but not configured. can be used if you so choose.
  
</details>

<details>
  <summary><strong>Gaming</strong></summary>
  - Preinstalled steam,lutris and mangohud
  
</details>

# Dotfiles
I am using my other git for the Dotfiles
https://github.com/smsriharsha/Openbox_Dotfiles.git

### Here are a few highlights [Learn More](https://github.com/smsriharsha/Openbox_Dotfiles.git)
### Please support the original creator [HERE](https://github.com/owl4ce/dotfiles.git)

- **Window Manager**               • [Openbox](https://www.youtube.com/watch?v=r5HzpWK7SBY) :art: 4 modes!
- **Shell**                        • [Zsh](https://www.zsh.org) :shell: with [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) framework!
- **Terminal**                     • [kitty](https://github.com/kovidgoyal/kitty)
- **Openbox Menu**                 • [obmenu-generator](https://github.com/trizen/obmenu-generator)
- **Panel**                        • [Tint2](https://gitlab.com/o9000/tint2) :shaved_ice: material icons font!
- **Compositor**                   • [Picom](https://github.com/yshui/picom) :doughnut: rounded corners!
- **Notify Daemon**                • [Dunst](https://github.com/dunst-project/dunst) :leaves: minimalism!
- **Application Launcher**         • [Rofi](https://github.com/adi1090x/rofi) :rocket: blazing fast!
- **File Manager**                 • [Thunar](https://github.com/xfce-mirror/thunar) :bookmark: customized sidebar!
- **Music Player**                 • [Spotify](https://github.com/owl4ce/spicetify-themes/tree/new/Dribbblish#eyecandy) # THEMED
- **GUI Basic-IDE**                • [Geany - The Flyweight IDE](https://www.geany.org)

 ## Screenshot
 
![opnebox](https://user-images.githubusercontent.com/23277835/161943850-7bb9e00c-730a-4477-b0a2-81ba1d226383.gif)


# How to install
## Prerequisites
Install the base system of arch from 

https://github.com/smsriharsha/ArchBaseInstall.git

## Minimum Requirements & Resource Usage
### My test System Specs
- CPU: Dual core intel i5 5300u
- Memory: 12gb ram
- SSD: 64gb.
- GPU: Integrated
- Display : 1920x1080(required)

### Minimum Requirements (My estimate)
- CPU: Dual Code intel i5 4th gen or above
- Memmory : 2gb (min)/ 4gb remommended
- SSD: 64 GB minimum(256 gb remommended)
- GPU: NA
- Display : 1376x768 or 1920x1080 required
- Dual monitor supported.

## Screenshot of resource usage

![2022-04-02-231741_1920x1080_scrot](https://user-images.githubusercontent.com/23277835/161954742-1d0c2298-8133-4b7c-b1e9-f612a59e568e.png)


## Steps to Install.
Clone the Git repo

```
git clone https://github.com/smsriharsha/OpenboxInstall.git
```

Go into the downloaded folder and if not alredy done
```
chmod 777 openbox_install.sh enabling_services.sh
```

Run the openbox_install script
```
sudo ./openbox_install.sh
```

switch to root
```
sudo -s
./enabling_services.sh
```

switch back to user and run
```
sudo -s
./theme_config.sh
```
# Known Problems
Webgreeter at the time of Writing this doc has a few probelms and not getting installed properly.

Visit the official git repo for support.(it will work after dependies are correctly istalled).

### My solution:
install it using yay once and also from git repo using git clone once. then it will work.

### SMB client:
Also does not work on the current version in AUR.
Look at my dependecy list to figure of which version works for smb client or any others.
https://github.com/smsriharsha/Openbox_Dotfiles/blob/main/dependencies_versions.txt

### Permission denied:
Change the permisions of all the scritps in the dotfiles.

# Credits:
This is hands down my favourite dot files package.
I have made only a few tweaks but most of the work belongs to.

HARRY: (https://github.com/owl4ce)

https://github.com/owl4ce/dotfiles.git

Chris titus tech:
This script is a tweaked version of his KDE install script.

