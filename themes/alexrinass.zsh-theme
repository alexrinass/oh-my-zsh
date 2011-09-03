ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

ZSH_THEME_SVN_PROMPT_PREFIX=" %{$fg[yellow]%}svn:("
ZSH_THEME_SVN_PROMPT_SUFFIX=")%{$reset_color%}"

# PROMPT="[%*] %n:%c $(git_prompt_info)%(!.#.$) "
PROMPT='%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[cyan]%}%m%{$reset_color%}:%{$fg[green]%}%60<..<%~%{$reset_color%}$(svn_prompt_info)$(git_prompt_info) %(!.#.$) '

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
RPS1="${return_code}"
