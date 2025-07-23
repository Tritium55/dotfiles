#!/bin/sh

#set -x

# MAKE SYMBOLIC LINKS
ln -s "$PWD/.vimrc" "$HOME"
ln -s "$PWD/.zshrc" "$HOME"
ln -s "$PWD/.fonts" "$HOME"

# linking all dotfiles from the config directory into .config
if [ ! -d "$HOME/.config" ]; then
	mkdir "$HOME/.config"
fi

cd config/

for dir in */; do
	if [ -d "$dir" ]; then
		ln -s "$PWD/$dir" "$HOME/.config/"
	fi
done

cd ..


# Update batcat binary cache (this is needed for loading custom themes)
bat cache --build
