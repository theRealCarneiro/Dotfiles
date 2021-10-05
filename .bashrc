set -o vi
if [[ $UID -eq 0 ]]; then
	user_symbol='# '
else
	if [ "$TERM" = "linux" ]; then
		user_symbol='$ '
	else
		user_symbol=' '
	fi
fi
export PS1=" \[\e[0;31m\]\w \[\e[0;37m\]$user_symbol"
export HISTFILE="$XDG_CACHE_HOME"/bash/history
