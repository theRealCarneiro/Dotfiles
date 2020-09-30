export PATH=$PATH:$HOME/.config/nvim/bundle/vim-live-latex-preview/bin:/usr/local/go/bin:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')

# Default programs
export EDITOR="nvim"
export TERMINAL="alacritty"
export READER="mupdf"
export BROWSER="qutebrowser"

# Config
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/.gtkrc-2.0"
export ATOM_HOME="$XDG_CONFIG_HOME/atom"
export CARGO_HOME="$XDG_CONFIG_HOME/cargo"
export RUSTUP_HOME="$XDG_CONFIG_HOME/rustup"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export XAUTHORITY="$XDG_CONFIG_HOME/X11/.Xauthority"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"

# Cache
export LESSHISTFILE="$HOME/.cache/less/history"

# Data
export XDG_DATA_HOME="$HOME/.local/share"
export WINEPREFIX="$XDG_DATA_HOME/wine"
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/.password-store"

# Other configs
export NNN_USE_EDITOR=1
source "/home/gabriel/.cache/wal/shell"

if [[ -z $DISPLAY ]] && [[ "$(tty)" = "/dev/tty1" ]]; then
	startx -- vt1 &> /dev/null
fi
