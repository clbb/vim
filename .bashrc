alias ll='ls -l'
alias ~='cd ~'
function parse_git_branch {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' -e 's/((/(/' -e 's/))/)/'
}
function proml {
local GREEN="\[\033[0;32m\]"
local COLOR_END="\[\033[0m\]"
PS1='\[\e[0;33m\]\u\[\e[1;36m\]@\h\[\e[m\] \[\e[0;32m\]\w\[\e[0;35m\]$(parse_git_branch)\[\e[1;32m\] \$\[\e[m\] '
}
proml
