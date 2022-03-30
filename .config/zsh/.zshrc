# Keys
stty -ixon # disable pause with ctrl + s

# Auto complete
fpath+=( $ZDOTDIR/completion )
autoload -U compinit
compinit -i
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)

# History cache
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=$XDG_CACHE_HOME/zsh/history

# Colors
[[ -f "$HOME/.config/colorfig/generated/colors.sh" ]] && \
	source $HOME/.config/colorfig/generated/colors.sh 

[[ -f "$XDG_CONFIG_HOME/colorfig/generated/colors-tty.sh" ]] && \
	source $XDG_CONFIG_HOME/colorfig/generated/colors-tty.sh

# Plugins
source $ZDOTDIR/themes/minimal.zsh-theme
source $ZDOTDIR/plugins/git.zsh
#source $ZDOTDIR/plugins/prompt_info_functions.zsh
source $ZDOTDIR/plugins/theme-and-appearance.zsh
source $ZDOTDIR/plugins/zsh-vi-mode.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Alias
setopt complete_aliases
alias todo="nvim $HOME/Bibliotecas/TODO"
alias makebcd="sudo make install -C $HOME/Bibliotecas/Projects/BCD-3000-Midi-Hotkey"
alias makedwm="sudo make install -C $HOME/Bibliotecas/Projects/suckless/dwm/"
alias dotfiles="git --git-dir=$DOTBARE_DIR --work-tree=$HOME"
alias etcgit='sudo git --git-dir=/etc/etcgit/repo --work-tree=/etc'
alias sv='SVDIR=$HOME/.config/runit/service sv'
alias startx="startx $HOME/.config/x11/xinitrc"
alias fm="vifmrun ."
alias yeet='yay -Rns '

LFCD="$HOME/.local/bin/lfcd"
[ -f "$LFCD" ] && source "$LFCD"
