export LANG=ja_JP.UTF-8

set -o vi

# alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
# Some people use a different file for aliases
# if [ -f "${HOME}/.bash_aliases" ]; then
#   source "${HOME}/.bash_aliases"
# Some example alias instructions
# they may mask.  For example, alias rm='rm -i' will mask the rm
# application.  To override the alias instruction use a \ before, ie
# \rm will call the real rm not the alias.
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
# alias df='df -h'
# alias du='du -h'
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
# alias egrep='egrep --color=auto'              # show differences in colour
# alias fgrep='fgrep --color=auto'              # show differences in colour
alias ls='ls -hF --color=tty'                 # classify files in colour
# alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
# alias l='ls -CF'                              #
alias vi="vim"
alias ipconfig='ipconfig | nkf -w'
alias cstart='cygstart'
# alias cd=cd_func

# 色有効
autoload -U colors
colors

# 色定義
local GREEN=$'%{\e[1;32m%}'
local BLUE=$'%{\e[1;34m%}'
local DEFAULT=$'%{\e[1;m%}'

# 通常のプロンプト
PROMPT=$BLUE'[%n]%# '$WHITE
# 右側のプロンプト。ここでカレントディレクトリを出す。
RPROMPT=$GREEN'[%~]'$WHITE
setopt transient_rprompt

# if [ -f "${HOME}/.inputrc" ] ; then
#   source "${HOME}/.inputrc"
# fi
