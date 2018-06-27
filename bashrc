LICOLOR="YES"; export CLICOLOR
LSCOLORS="ExGxFxdxCxDxDxhbadExExEx"; export LSCOLOR
source /usr/local/gromacs/bin/GMXRC.bash

source ~/scripts/git-completion.bash
source ~/scripts/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='[\h] \w\n$(__git_ps1 "(%s)")$ '
export PATH="//anaconda/bin:$PATH"

# remote machines
export RE=user@remote.machine.com
alias remote='ssh user@remote.machine.com'

# aliases
alias xmgrace='xmgrace -free'
alias vi='vim'
alias lspy='ls -l | grep py'
alias vmd='/Applications/VMD\ 1.9.1.app/Contents/MacOS/startup.command'
alias preview='open -a Preview'
alias rscp='rsync -avzhe ssh --progress'

# environment variables
export MP_EDITOR='/usr/bin/vim'

# script from http://onethingwell.org/post/586977440/mkcd-improved
# make a directory and immediately change to it
mkcd () {
    mkdir -p "$*"
    cd "$*"
}
