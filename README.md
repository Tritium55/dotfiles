# dotfiles
My i3 .config files

## Keyboard layout settings
~~~bash
# 1. Swap the physical Escape and Caps Lock keys entirely
setxkbmap -option "caps:swapescape"

# 2. Make the new Escape key (physical Caps Lock) act as Ctrl when held
# The physical Caps Lock key is now internally an Escape key due to the swap above.
# We use scape on the *resulting* Escape key, which does not naturally work.
# So now, we set the physical Caps Lock key to behave as a Ctrl key.
# Then we implement the Escape functionality.
setxkbmap -option "caps:ctrl_modifier"

# 3. Make the new Escape key (physically the Caps Lock key) send Escape when 
xcape -e "Control_L=Escape"
~~~
You can those to e.g. `~/.xprofile`{:.bash}, `~/.xsession`{:.bash} or your desktop environment's autostart settings.
Make sure said file is executable.

## Dependencies
- i3
- polybar
- zsh
- neovim
- batcat
- fzf

### ZSH Dependencies
- Powerlevel10k (theme)
- Starship (theme)
- z
- zsh-autosuggestions
- zsh-syntax-highlighting
- you-should-use
- zsh-bat
- fzf
