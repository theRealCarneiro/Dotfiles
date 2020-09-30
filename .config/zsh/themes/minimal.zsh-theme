# ZSH Theme
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_symbol='# '
else
	if [ "$TERM" = "linux" ]; then
		local user_symbol='%{$fg[white]%}$ '
	else
		local user_symbol='%{$fg[white]%} '
	fi
fi

local current_dir='%{$fg[red]%}%~ %{$reset_color%}'
local git_branch='%{$terminfo[bold]$fg[magenta]%}$(git_current_branch)%{$reset_color%}'

ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"

PROMPT="${current_dir}${git_branch}${user_symbol}%b"
RPROMPT="%B${return_code}%b"


