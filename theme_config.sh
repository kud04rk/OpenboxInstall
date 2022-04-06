
cp -r $HOME/Openbox_Dotfiles/dotfiles/.oh-my-zsh/custom $HOME/.oh-my-zsh/
sudo rm $HOME/.zshrc
cp $HOME/Openbox_Dotfiles/dotfiles/.zshrc $HOME/

git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions

cp -r $HOME/.spicetify/Dribbblish $HOME/.config/spicetify/Themes/
cd "$(dirname "$(spicetify -c)")/Themes/Dribbblish"
mkdir -p ../../Extensions
cp dribbblish.js ../../Extensions/.
spicetify config extensions dribbblish.js
spicetify config current_theme Dribbblish color_scheme mechanical
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
spicetify backup apply
cd ~