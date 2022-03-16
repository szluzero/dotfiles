# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/zsh-syntax-highlighting

# copy custom theme to correct directory
cp ~/dotfiles/alephnaut-gnzh.zsh-theme ~/.oh-my-zsh/custom/themes/alephnaut-gnzh.zsh-theme

# link zshrc to be correct directory
ln -sf ~/dotfiles/.zshrc ~/.zshrc