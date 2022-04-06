# OpenboxInstall
 This is an extension to the Arch base install script to install GUI.
 
 https://github.com/smsriharsha/ArchBaseInstall.git
 
Choose the applications that you require to modify the script

The GUI is from JOYFUL desktop .

This uses various other git projects in the scipt to build the desktop.
 ## Screenshot
 
![opnebox](https://user-images.githubusercontent.com/23277835/161943850-7bb9e00c-730a-4477-b0a2-81ba1d226383.gif)



## Resource Usage
This is built on arch base 
uses 13 gb disk space and 650MB of ram.

## Steps to Install.
Clone the Git repo

```
git clone https://github.com/smsriharsha/OpenboxInstall.git
```

Go into the downloaded folder and
```
chmod 777 openbox_install.sh enabling_services.sh
```

Run the openbox_install script
```
./openbox_install.sh
```

switch to root
```
sudo -s
./enabling_services.sh
```


Credits:

This uses the dotfiles of https://github.com/owl4ce/dotfiles.git.
