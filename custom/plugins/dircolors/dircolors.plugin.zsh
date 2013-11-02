if which gdircolors &> /dev/null; then
	DIRCOLORS=$(which gdircolors)
elif which dircolors &> /dev/null; then
	DIRCOLORS=$(which dircolors)
fi

if which gls &> /dev/null; then
	LS=$(which gls)
elif which ls &> /dev/null; then
	LS=$(which ls)
fi

if [ -x "$LS" ]; then
  alias ls="$LS --color=auto"
fi

# Set terminal display colors
if  [ -x "$DIRCOLORS" ] && [ ! -z "$ZSH_DIRCOLORS_THEME" ] && [ -f "$ZSH/custom/plugins/dircolors/themes/$ZSH_DIRCOLORS_THEME.dircolors-theme" ]; then
  eval `$DIRCOLORS "$ZSH/custom/plugins/dircolors/themes/$ZSH_DIRCOLORS_THEME.dircolors-theme"`
fi
