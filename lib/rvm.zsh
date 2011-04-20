if [ -z $ZSH_THEME_RVM_PROMPT_NONE ]; then
  export ZSH_THEME_RVM_PROMPT_NONE=""
fi

if [ -z $ZSH_THEME_RVM_PROMPT_PREFIX ]; then
  export ZSH_THEME_RVM_PROMPT_PREFIX="rvm("
fi

if [ -z $ZSH_THEME_RVM_PROMPT_SUFFIX ]; then
  export ZSH_THEME_RVM_PROMPT_SUFFIX=")"
fi

# get the name of the branch we are on
function rvm_prompt_info() {
  ruby_version=$(~/.rvm/bin/rvm-prompt 2> /dev/null) || return
  
  if [ -z "$ruby_version" ]; then
    echo "$ZSH_THEME_RVM_PROMPT_NONE"
  else
    echo "$ZSH_THEME_RVM_PROMPT_PREFIX$ruby_version$ZSH_THEME_RVM_PROMPT_SUFFIX"
  fi
}
