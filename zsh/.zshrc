# Tim's config for the Zoomer Shell

# Enable colours and change prompt
PS1="%B%{$fg[red]%}[%{$fg[blue]%}%n%{$fg[yellow]%}@%{$fg[red]%}%M%{$fg[blue]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

setopt autocd #Auto cd into typed dirs

# History size and file
HISTFILE=~/.config/zsh/histfile
HISTSIZE=50
SAVEHIST=100

# Basic autocomplete
autoload -Uz compinit && compinit -i
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Vim keys in auto-complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

# Aliases
alias \
	ls='ls -hN --color=auto --group-directories-first'\
	la='ls -la --color=auto'\
	cp='cp -iv'\
	mv='mv -iv'\
	rm='rm -vI'\
	mkdir='mkdir -pv'\
	ka='killall'\
	clip='xclip -sel clip <'\
	..='cd ..'\
	grep='grep --color=auto'\
	irssi='irssi --home=~/.config/irssi --config=~/.config/irssi/config'\
	ansible-latest='source /home/timothy/Projects/Python/VirtEnv/ansible-latest/bin/activate'\
	ansible-210='source /home/timothy/Projects/Python/VirtEnv/ansible-2.10/bin/activate'

fpath=(/home/timothy/.config/zsh/completion $fpath)
# Load syntax highlighting: this should be last
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
