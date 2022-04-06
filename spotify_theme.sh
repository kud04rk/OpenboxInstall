cp -r $HOME/.spicetify/Dribbblish $HOME/.config/spicetify/Themes/
cd "$(dirname "$(spicetify -c)")/Themes/Dribbblish"
mkdir -p ../../Extensions
cp dribbblish.js ../../Extensions/.
spicetify config extensions dribbblish.js
spicetify config current_theme Dribbblish color_scheme mechanical
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
spicetify backup apply
cd ~