# Colors
#cat /home/gabriel/.cache/wal/sequences
#neofetch

# Keys
stty -ixon #disable pause with ctrl + s

# Auto complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# History cache
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.cache/zsh/history

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(git)
#source $HOME/.config/zsh/themes/bira.zsh-theme
source $HOME/.config/zsh/themes/minimal.zsh-theme
source $HOME/.config/zsh/plugins/key-bindings.zsh
source $HOME/.config/zsh/plugins/git.zsh
source $HOME/.config/zsh/plugins/prompt_info_functions.zsh
source $HOME/.config/zsh/plugins/theme-and-appearance.zsh

# Alias
alias makedwm="sudo make install -C $HOME/Bibliotecas/Projects/dwm/"
alias calcurse="calcurse -C $HOME/.config/calcurse -D $HOME/.config/calcurse"
alias mbsync="mbsync -c $HOME/.config/isync/mbsyncrc"
alias wget="wget --hsts-file=$HOME/cache/wget/wget-hsts"
alias config='/usr/bin/git --git-dir=$HOME/Bibliotecas/Projects/Dotfiles --work-tree=$HOME'

# Change cursor on VI mode
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Vi mode
bindkey -v
export KEYTIMEOUT=1

if [ "$TERM" != "linux" ]; then
	function x11-clip-wrap-widgets() {
	    # NB: Assume we are the first wrapper and that we only wrap native widgets
	    # See zsh-autosuggestions.zsh for a more generic and more robust wrapper
	    local copy_or_paste=$1
	    shift

	    for widget in $@; do
		   # Ugh, zsh doesn't have closures
		   if [[ $copy_or_paste == "copy" ]]; then
			  eval "
			  function _x11-clip-wrapped-$widget() {
				 zle .$widget
				 xclip -in -selection clipboard <<<\$CUTBUFFER
			  }
			  "
		   else
			  eval "
			  function _x11-clip-wrapped-$widget() {
				 CUTBUFFER=\$(xclip -out -selection clipboard)
				 zle .$widget
			  }
			  "
		   fi

		   zle -N $widget _x11-clip-wrapped-$widget
	    done
	}


	local copy_widgets=(
	    vi-yank vi-yank-eol vi-delete vi-backward-kill-word vi-change-whole-line
	)
	local paste_widgets=(
	    vi-put-{before,after}
	)

	# NB: can atm. only wrap native widgets
	x11-clip-wrap-widgets copy $copy_widgets
	x11-clip-wrap-widgets paste  $paste_widgets
fi
