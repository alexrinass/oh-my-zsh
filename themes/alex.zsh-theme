# PROMPT="[%*] %n:%c $(git_prompt_info)%(!.#.$) "

function rvm_prompt() {
  rvm_prompt="$(rvm_prompt_info)"
  
  if [ -z "$rvm_prompt" ]; then
    return
  fi
  
  echo "$(rvm_prompt)"
}

PROMPT='[%*] %{$fg[cyan]%}%n%{$reset_color%}:%{$fg[green]%}%40<..<%~%{$reset_color%}$(git_prompt_info) %(!.#.$) '

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
