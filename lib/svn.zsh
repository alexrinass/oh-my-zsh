if [ -z $ZSH_THEME_SVN_PROMPT_PREFIX ]; then
  export ZSH_THEME_SVN_PROMPT_PREFIX="svn("
fi

if [ -z $ZSH_THEME_SVN_PROMPT_SUFFIX ]; then
  export ZSH_THEME_SVN_PROMPT_SUFFIX=")"
fi

svn_prompt_info() {
  [ -d .svn ] || return
  echo "$ZSH_THEME_SVN_PROMPT_PREFIX$(svn_prompt_rev)$(svn_prompt_status)$ZSH_THEME_SVN_PROMPT_SUFFIX"
}

svn_prompt_rev() {
  LOG=$(svn log -l 1 2> /dev/null)
  REV=$(echo $LOG |grep -o "r[0-9]")
  echo "$REV"
}

svn_prompt_status() {
  STATUS=$(svn status 2> /dev/null)

  if [ ! -z "$STATUS" ]; then
    echo "*"
  fi
}