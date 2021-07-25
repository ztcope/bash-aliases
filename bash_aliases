#bash_aliases
#Various commands and scripts I use frequently.

command_exists(){
	command -v "$1" > /dev/null
}

#A script for extracting various file types. Shamelessly stolen from the internet.
extract(){
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)   tar xvjf $1    ;;
			*.tar.gz)    tar xvzf $1    ;;
			*.tar.xz)    tar xf $1      ;;
			*.bz2)       bunzip2 $1     ;;
			*.rar)       unrar x $1     ;;
			*.gz)        gunzip $1      ;;
			*.tar)       tar xvf $1     ;;
			*.tbz2)      tar xvjf $1    ;;
			*.tgz)       tar xvzf $1    ;;
			*.zip)       unzip $1       ;;
			*.Z)         uncompress $1  ;;
			*.7z)        7z x $1        ;;
			*)           echo "don't know how to extract '$1'..." ;;
		esac
	else
		echo "'$1' is not a valid file!"
	fi
}

if $( command_exists nvim ); then
	alias vim='nvim'
fi

if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi

#Aliases for my sanity.
alias q='exit'
alias :q='exit'
alias c='clear'
alias ..='cd ..'
alias open='xdg-open'

export EDITOR=nvim
