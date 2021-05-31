# Keys
stty -ixon #disable pause with ctrl + s

# Auto complete
fpath+=( $ZDOTDIR/completion )
autoload -U compinit
compinit -i
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)

# History cache
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$XDG_CACHE_HOME/zsh/history

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/themes/minimal.zsh-theme
source $ZDOTDIR/plugins/git.zsh
source $ZDOTDIR/plugins/prompt_info_functions.zsh
source $ZDOTDIR/plugins/theme-and-appearance.zsh
source $ZDOTDIR/plugins/zsh-vi-mode.zsh

# Alias
setopt complete_aliases
alias makebcd="sudo make install -C $HOME/Bibliotecas/Projects/BCD-3000-Midi-Hotkey"
alias makedwm="sudo make install -C $HOME/Bibliotecas/Projects/suckless/dwm/"
alias config='git --git-dir=$HOME/Bibliotecas/Projects/Dotfiles --work-tree=$HOME'
alias sv='SVDIR=$HOME/.config/runit/service sv'
alias startx="startx $HOME/.config/X11/xinitrc"

LFCD="$HOME/.local/bin/lfcd"
[ -f "$LFCD" ] && source "$LFCD"
