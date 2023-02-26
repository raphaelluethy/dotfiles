ZSH_DISABLE_COMPFIX=true

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/raphaelluethy/.oh-my-zsh"

plugins=(
  git
  z
  docker
  copyfile # copy the content of a file
  extract # extract any type of archvie
  git-extras # super cool autocompletion for git command
)

source $ZSH/oh-my-zsh.sh

alias lsa="ls -a"
alias cls="clear"

alias gita="git add ."


gitc() {
  git commit -m $1
}

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -" # switch between old and present working directory
alias download="http --follow --download"
alias diff="colordiff"
alias diff="colordiff"
alias rm="trash" # this is a live saver
alias ls="exa --group-directories-first"
alias g="git"
alias reload!='. ~/.zshrc'
alias x="exit"
alias sz="source ~/.zshrc"
alias ls="exa --group-directories-first"
alias lst="exa --group-directories-first -T"
alias ll="exa --group-directories-first -l"
alias la="exa --group-directories-first -a"
alias lat="exa --group-directories-first -a -T"
alias path='echo -e ${PATH//:/\\n}'
# Stuff I never really use but cannot delete either because of https://xkcd.com/530/
# original aliases used 'muted true' instead of 'volume 0', I find this better
alias stfu="osascript -e 'set volume output volume 0'"
alias pumpit="osascript -e 'set volume output volume 100'"

alias afk="/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"
alias sleep="pmset sleepnow"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsih ]] || source ~/.p10k.zsh
#source ~/powerlevel10k/powerlevel10k.zsh-theme

compinit
_comp_options+=(globdots)

# # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#export PATH="/usr/local/opt/icu4c/bin:$PATH"
#export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=$PATH:/Users/raphaelluethy/bin


export PATH="/usr/local/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

eval $(thefuck --alias)

eval "$(starship init zsh)"
