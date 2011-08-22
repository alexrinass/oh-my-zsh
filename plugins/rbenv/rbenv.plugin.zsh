if [ -z $ZSH_THEME_RBENV_PROMPT_NONE ]; then
  export ZSH_THEME_RBENV_PROMPT_NONE=""
fi

if [ -z $ZSH_THEME_RBENV_PROMPT_PREFIX ]; then
  export ZSH_THEME_RBENV_PROMPT_PREFIX="rb("
fi

if [ -z $ZSH_THEME_RBENV_PROMPT_SUFFIX ]; then
  export ZSH_THEME_RBENV_PROMPT_SUFFIX=")"
fi

# get the name of the branch we are on
function rbenv_prompt_info() {
  ruby_version=$(rbenv version | sed 's/ (.*)//g' 2> /dev/null) || return
  
  if [ -z "$ruby_version" ]; then
    echo "$ZSH_THEME_RBENV_PROMPT_NONE"
  else
    echo "$ZSH_THEME_RBENV_PROMPT_PREFIX$ruby_version$ZSH_THEME_RBENV_PROMPT_SUFFIX"
  fi
}
