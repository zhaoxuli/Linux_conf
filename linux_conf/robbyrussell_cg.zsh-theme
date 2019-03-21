if [[ $TERM = *256color* || $TERM = *rxvt* ]]; then
    turquoise="%F{81}"
    orange="%F{166}"
    purple="%F{135}"
    hotpink="%F{161}"
    limegreen="%F{118}"
else
    turquoise="$fg[cyan]"
    orange="$fg[yellow]"
    purple="$fg[magenta]"
    hotpink="$fg[red]"
    limegreen="$fg[green]"
fi

local ret_status="%(?:%{$purple%}➜  %{$limegreen%}%n:%{$fg[red]%}➜  %{$limegreen%}%n)"
PROMPT='${ret_status} %{$fg[cyan]%}%~$(git_prompt_info)%{$purple%} at %{$hotpink%}%* %{$reset_color%}'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$purple%} gb:%{$limegreen%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$purple%} %{$hotpink%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$purple%}"
