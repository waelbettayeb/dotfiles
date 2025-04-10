fpath+=~/.zfunc

# brew
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# zsh theme
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# k8s
alias k='kubectl'

# Created by `pipx` on 2024-03-06 06:24:31
export PATH="$PATH:/Users/wael/.local/bin"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# deno
export DENO_INSTALL="/Users/wael/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# aws
export AWS_PROFILE=wael_cli

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/wael/.cache/lm-studio/bin"

# grep aliases
alias g="grep"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(gh copilot alias -- zsh)"
export XDG_CONFIG_HOME="$HOME/.config"


DOTFILES_DIR="$HOME/.dotfiles"

alias dotfiles='/usr/bin/git --git-dir=$DOTFILES_DIR --work-tree=$HOME'
echo "alias dotfiles='/usr/bin/git --git-dir=$DOTFILES_DIE --work-tree=$HOME'" >> ~/.bashrc
dotfiles config --local status.showUntrackedFiles no
