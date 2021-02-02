export PATH=$PATH:$HOME/.config/nvim/bundle/vim-live-latex-preview/bin:/usr/local/go/bin:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')

# Runit services
export SVDIR=/run/runit/service

# Default programs
export EDITOR="nvim"
export TERMINAL="alacritty"
export READER="zathura"
export BROWSER="brave"
export WM="dwm"

# Config
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/.gtkrc-2.0"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export ATOM_HOME="$XDG_CONFIG_HOME/atom"
export CARGO_HOME="$XDG_CONFIG_HOME/cargo"
export RUSTUP_HOME="$XDG_CONFIG_HOME/rustup"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export XAUTHORITY="$XDG_CONFIG_HOME/X11/.Xauthority"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"

# Cache
export XDG_CACHE_HOME="$HOME/.cache"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"

# Data
export XDG_DATA_HOME="$HOME/.local/share"
export WINEPREFIX="$XDG_DATA_HOME/wine"
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/.password-store"

# Other configs
export NNN_USE_EDITOR=1
source "/home/gabriel/.cache/wal/shell"
source "/home/gabriel/.config/lf/icons"
source "/usr/share/autojump/autojump.zsh"
source "/home/gabriel/.config/i3/workspaces"

if [[ -z $DISPLAY ]] && [[ "$(tty)" = "/dev/tty1" ]]; then
	exec startx -- vt1 &> /dev/null
fi
