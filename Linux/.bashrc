# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

if [ -f $HOME/git-prompt.sh ]; then
    source $HOME/git-prompt.sh
    source $HOME/colors.sh

    export PS1='[\u@\h \W'$Green'$(__git_ps1 " (%s)")'$Color_Off']\$ '
fi

#    env LESS_TERMCAP_mb=$'\E[01;31m' \
#    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
#    LESS_TERMCAP_me=$'\E[0m' \
#    LESS_TERMCAP_se=$'\E[0m' \
#    LESS_TERMCAP_so=$'\E[38;5;246m' \
#    LESS_TERMCAP_ue=$'\E[0m' \
#    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
#    man "$@"

man() {
    env LESS_TERMCAP_mb=$(printf '\e[1;31m') \
        LESS_TERMCAP_md=$(printf '\e[0;38;5;214m') \
        LESS_TERMCAP_me=$(printf '\e[0m') \
        LESS_TERMCAP_se=$(printf '\e[0m') \
        LESS_TERMCAP_so=$(printf '\e[7m') \
        LESS_TERMCAP_ue=$(printf '\e[0m') \
        LESS_TERMCAP_us=$(printf '\e[4;36m') \
        GROFF_NO_SGR=1 \
    man "$@"
}

