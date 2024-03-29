export PATH=$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')

# Default programs
export WM="bspwm"
export EDITOR="nvim"
export TERMINAL="alacritty"
export READER="zathura"
export BROWSER="brave"

# Misc
export SXHKD_SHELL='/bin/sh'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'

# Config
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/.gtkrc-2.0"
export CARGO_HOME="$XDG_CONFIG_HOME/cargo"
export RUSTUP_HOME="$XDG_CONFIG_HOME/rustup"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"
export XAUTHORITY=${XAUTHORITY:-"$XDG_CONFIG_HOME/x11/.Xauthority"}
export X11="$XDG_CONFIG_HOME/x11"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export NEXTCLOUD_PHP_CONFIG=/etc/webapps/nextcloud/php.ini
export TDESKTOP_FORCE_PANEL_ICON=1
export TDESKTOP_DISABLE_TRAY_COUNTER=1
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
export PM2_HOME="$XDG_CONFIG_HOME/pm2"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PYLINTRC="$XDG_CONFIG_HOME/pylint/pylintrc"
export PYTHONSTARTUP="$HOME/.local/bin/pynit.py"
export APP_PATH="$HOME/.config/stremio"

# Cache
export XDG_CACHE_HOME="$HOME/.cache"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export MYSQL_HISTFILE="$XDG_CACHE_HOME/mysql_history"
export PYHISTFILE="$XDG_CACHE_HOME/python/python_history"

# Data
export BIB="$HOME/Bibliotecas"
export XDG_DATA_HOME="$HOME/.local/share"
export DOTBARE_DIR="$BIB/Projects/Dotfiles"
export WINEPREFIX="$XDG_DATA_HOME/wine"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/.password-store"
export GOPATH="$XDG_DATA_HOME/go"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"

# Other configs
[ -f "/home/gabriel/.config/lf/icons" ] && \
	. "/home/gabriel/.config/lf/icons"

# Runit
export SVDIR=/run/runit/service # Runit services
export USER_SVDIR=$HOME/.config/runit/service # Runit services

#if [[ -z $DISPLAY ]] && [[ "$(tty)" = "/dev/tty1" ]]; then
	#exec startx $HOME/.config/x11/xinitrc -- vt1 &> /dev/null
#fi

#if [[ -z $DISPLAY ]] && [[ "$(tty)" = "/dev/tty1" ]]; then
	#exec hyprlaunch
#fi
