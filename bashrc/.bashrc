parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[32m\][\[\e[m\]\[\e[36m\]\u\[\e[m\]\[\e[33m\] @ \@ \[\e[m\]\[\e[32m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[36m\]\[\033[01;31m\]\$(parse_git_branch)\[\033[00m\]\n\$\[\e[m\] "
