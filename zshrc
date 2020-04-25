plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
)

ZSH_THEME="theunraveler"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[white]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# %~ is the current working directory relative to the home directory
PROMPT='[$FG[228]%~%{$reset_color%}]'
PROMPT+=' $(git_prompt_info)'
PROMPT+=' %(?.$FG[154].$FG[009])€%{$reset_color%} '

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mwt/.oh-my-zsh"

CASE_SENSITIVE="true"

source $ZSH/oh-my-zsh.sh

# aliases
alias xmgrace='xmgrace -free'
alias vi='nvim'
alias vip='vi -p'
alias lspy='ls -l | grep py'
alias vmd='/Applications/VMD\ 1.9.3.app/Contents/MacOS/startup.command'
alias preview='open -a Preview'
alias rscp='rsync -avzhe ssh --progress'
alias rm='rmtrash' # brew install rmtrash
alias diff='colordiff' # brew install colordiff
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'

# environment variables
export MP_EDITOR='/usr/bin/vim'
export VMD=/Users/mwt/software/scripts/vmd_scripts
export OE_LICENSE=/Users/mwt/.oe_license.txt

# script from http://onethingwell.org/post/586977440/mkcd-improved
# make a directory and immediately change to it
mkcd () {
    mkdir -p "$*"
    cd "$*"
}


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mwt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mwt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mwt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mwt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export PATH="/usr/local/sbin:$PATH"
