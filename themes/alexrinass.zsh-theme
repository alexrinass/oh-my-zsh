if [ -n "$SSH_CLIENT" ]; then
	PROMPT='%{$fg_bold[magenta]%}%n@%m%{$reset_color%} %{$fg[blue]%}%60<..<%~%{$fg[blue]%}$(git_prompt_info)%{$reset_color%} '
else
	PROMPT='%{$fg[blue]%}%60<..<%~%{$fg[blue]%}$(git_prompt_info)%{$reset_color%} '
fi

if which rbenv &> /dev/null; then
	RPROMPT='%{$fg[red]%}$(rbenv version | sed -e "s/ (set.*$//") %{$reset_color%}'
fi

ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
