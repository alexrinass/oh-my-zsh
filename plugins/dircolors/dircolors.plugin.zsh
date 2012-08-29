DIRCOLORS=$(which gdircolors)

if [ -z "$DIRCOLORS" ]; then
  DIRCOLORS=$(which dircolors)
fi

LS=$(which gls)

if [ -z "$LS" ]; then
  LS=$(which ls)
fi

if [ -x "$LS" ]; then
  alias ls="$LS --color=auto"
fi

# Set terminal display colors
if  [ -x "$DIRCOLORS" ] && [ ! -z "$ZSH_DIRCOLORS_THEME" ] && [ -f "$ZSH/plugins/dircolors/themes/$ZSH_DIRCOLORS_THEME.dircolors-theme" ]; then
  eval `$DIRCOLORS "$ZSH/plugins/dircolors/themes/$ZSH_DIRCOLORS_THEME.dircolors-theme"`
fi
