#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt color
PS1="\[\e[0;33m\]\u\[\e[0m\]@\[\e[34m\]\h \[\e[32m\]\w\[\e[35m\] \[\e[31m\]>\[\e[0m\] "

#Aliases
alias pool='lp -U tnduong -o sides=two-sided-long-edge -o media=a4 -o fit-to-page -d epflpool'
alias slidepool='lp -U tnduong -o sides=two-sided-long-edge -o media=a4 -o fit-to-page -o landscape -o number-up=4 -d epflpool'
alias 2pool='lp -U tnduong -o sides=two-sided-long-edge -o media=a4 -o fit-to-page -o landscape -o number-up=2 -d epflpool'
alias ls='ls --color=auto'
alias ll='ls -l -h --color=auto'
alias feh='feh --scale-down'

# Git auto-completion
source /usr/share/git/completion/git-completion.bash
