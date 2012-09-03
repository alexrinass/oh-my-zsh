if [ -n "$SSH_CLIENT" ]; then
	PROMPT='%{$fg_bold[magenta]%}%n@%m%{$reset_color%} %{$fg[blue]%}%60<..<%~%{$reset_color%}$(git_prompt_info)%{$reset_color%} '
else
	PROMPT='%{$fg[blue]%}%60<..<%~%{$reset_color%}$(git_prompt_info)%{$reset_color%} '
fi

RPROMPT='(%?) %{$fg[red]%}$(rbenv_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
