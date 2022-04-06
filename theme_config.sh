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



cp -r $HOME/.spicetify/Dribbblish $HOME/.config/spicetify/Themes/
cd "$(dirname "$(spicetify -c)")/Themes/Dribbblish"
mkdir -p ../../Extensions
cp dribbblish.js ../../Extensions/.
spicetify config extensions dribbblish.js
spicetify config current_theme Dribbblish color_scheme mechanical
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
spicetify backup apply
cd ~