ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

RVM_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}rvm:("
RVM_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

# PROMPT="[%*] %n:%c $(git_prompt_info)%(!.#.$) "
PROMPT='[%*] %{$fg[cyan]%}%n%{$reset_color%}:%{$fg[green]%}%40<..<%~%{$reset_color%}$(rvm_prompt_info)$(git_prompt_info) %(!.#.$) '

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
RPS1="${return_code}"
