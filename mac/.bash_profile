alias python='python -tt'
alias ls='ls -Go'
alias emacs='emacs -nw'
alias ..='cd ..'
alias l='ls -lF'
alias la='ls -laF'
alias e='emacs'
alias gr='grep -r -n --color=always * -e '

export EDITOR="emacs -nw --no-init-file"
export VISUAL="emacs -nw --no-init-file"

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e ' s/* \(.*\)/(\1)/'
    }

export PS1="\u@\h:\[\e[0;34m\]\w\[\e[0m\] \[\e[0;32m\]\$(parse_git_branch)\[\e[0m\](\j)$ "
