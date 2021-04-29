# Keys
stty -ixon #disable pause with ctrl + s

# Auto complete
fpath+=( $XDG_CONFIG_HOME/zsh/completion )
autoload -U compinit
compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)

# History cache
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.cache/zsh/history

# Plugins
#plugins=(git)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/gabriel/.config/zsh/themes/minimal.zsh-theme
source /home/gabriel/.config/zsh/plugins/git.zsh
source /home/gabriel/.config/zsh/plugins/prompt_info_functions.zsh
source /home/gabriel/.config/zsh/plugins/theme-and-appearance.zsh
source /home/gabriel/.config/zsh/plugins/zsh-vi-mode.zsh
#source /home/gabriel/.config/zsh/plugins/key-bindings.zsh

# Alias
alias makebcd="\
	sudo make install -C $HOME/Bibliotecas/Projects/BCD-3000-Midi-Hotkey"
alias makedwm="\
	sudo make install -C $HOME/Bibliotecas/Projects/suckless/dwm/"
alias config='\
	/usr/bin/git --git-dir=$HOME/Bibliotecas/Projects/Dotfiles --work-tree=$HOME'

LFCD="$HOME/.local/bin/lfcd"
if [ -f "$LFCD" ]; then
	source "$LFCD"
fi
