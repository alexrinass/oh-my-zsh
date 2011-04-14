# get the name of the branch we are on
function rvm_prompt_info() {
  ruby_version=$(~/.rvm/bin/rvm-prompt 2> /dev/null) || return
  
  if [ -z "$ruby_version" ]; then
    echo ""
  else
    echo "$RVM_THEME_GIT_PROMPT_PREFIX$ruby_version$RVM_THEME_GIT_PROMPT_SUFFIX"
  fi
}
