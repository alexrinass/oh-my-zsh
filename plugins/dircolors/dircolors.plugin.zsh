if [ -x /opt/local/bin/gdircolors ]; then
  alias dircolors='/opt/local/bin/gdircolors'
fi

# Set terminal display colors
eval `dircolors $ZSH/plugins/dircolors/themes/alex.dircolors-theme`
