# Language Setting
LANG=en_US.UTF-8

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="alexrinass"

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/plugins/dircolors/themes/
ZSH_DIRCOLORS_THEME="alexrinass"

# Set name of manpager to use
ZSH_MANPAGER="textmate"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
DISABLE_COMPLETION_WAITING_DOTS="true"

# Extend PATH variable 
export PATH=/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH

if [ -d $HOME/bin ]; then
  export PATH=$HOME/bin:$PATH
fi

# ZSH options
setopt NO_BEEP

# Relaxed umask
umask 0002
