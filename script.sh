#!/bin/bash

# install dependencies
echo "Installing vim-plug and oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo "Done."

# create symlinks
echo "Creating symlinks..."
ln -s -f ~/.dotfiles/.zshrc ~/.zshrc
ln -s -f ~/.dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -s -f ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
echo "Done."

# install fonts
echo "Installing fonts..."
cp ~/.dotfiles/fonts/JetBrainsMono[wght].ttf ~/.local/share/fonts
cp ~/.dotfiles/fonts/JetBrainsMono-Italic[wght].ttf ~/.local/share/fonts
fc-cache -f
echo "Done."
