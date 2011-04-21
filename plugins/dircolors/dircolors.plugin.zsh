if [ -x /opt/local/bin/gdircolors ]; then
  alias dircolors='/opt/local/bin/gdircolors'
fi

if [ -x /opt/local/bin/gls ]; then
  alias ls='/opt/local/bin/gls --color=auto'
fi

# Set terminal display colors
if [ ! -z "$ZSH_DIRCOLORS_THEME" ] && [ -f "$ZSH/plugins/dircolors/themes/$ZSH_DIRCOLORS_THEME.dircolors-theme" ]; then
  eval `dircolors "$ZSH/plugins/dircolors/themes/$ZSH_DIRCOLORS_THEME.dircolors-theme"`
fi
