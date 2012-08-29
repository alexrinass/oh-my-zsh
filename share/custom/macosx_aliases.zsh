alias _hosts='mate /etc/hosts'
alias flushdns='sudo dscacheutil -flushcache'

function chtheme() {
  NAME=$1; if [ -z "$NAME" ]; then NAME="Default"; fi
  osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"$NAME\""
}

function ssh() {
	if [ ! -z "$1" ]; then
		chtheme "Solarized Light"	
		/usr/bin/ssh "$@"
		chtheme "Solarized Dark"
	else
		/usr/bin/ssh "$@"
	fi	
}
