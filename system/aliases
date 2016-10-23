#enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	# test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	eval `dircolors`
	LS_COLORS="$LS_COLORS*.JPG=01;35:*.GIF=01;35:*.jpg=01;35:*.gif=01;35:*.jpeg=01;35:*.pcx=01;35:*.png=01;35:*.pnm=01;35:*.bz2=01;31:*.mpg=01;38:*.mpeg=01;38:*.MPG=01;38:*.MPEG=01;38:*.m4v=01;038:*.mp4=01;038:*.swf=01;038:*.avi=01;38:*.AVI=01;38:*.wmv=01;38:*.WMV=01;38:*.asf=01;38:*.ASF=01;38:*.mov=01;38:*.MOV=01;38:*.mp3=01;39:*.ogg=01;39:*.MP3=01;39:*.Mp3=01;39"

	export LS_OPTIONS='--color=auto'

	alias vi='vim'
	alias ..='cd ..'
	alias ls='ls -l $LS_OPTIONS'
	alias sl='ls -l $LS_OPTIONS'
	alias ll='ls -lF'
	alias la='ls -la $LS_OPTIONS'
	alias lr='ls -lR $LS_OPTIONS'
	alias l='ls -l $LS_OPTIONS'
	alias grep='grep $LS_OPTIONS'
	alias fgrep='fgrep $LS_OPTIONS'
	alias egrep='egrep $LS_OPTIONS'
	alias remake='make clean; make'
	alias home='cd ~'
	alias here='pwd'
	alias path='echo $PATH'
	alias gits='git status -s'
	alias gita='git add'
	alias gitb='git branch'
	alias gitc='git commit -m'
	alias fm='vifm'
	alias bashrc='$EDITOR ~/.bashrc'
	alias aliases='$EDITOR ~/.aliases'
	alias exports='$EDITOR ~/.exports'
	alias vimrc='$EDITOR ~/.vimrc'
	alias ipconfig='ifconfig'
fi


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

