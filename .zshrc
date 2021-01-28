# ************ git completion ************
# https://stackoverflow.com/a/58517668/12151830
autoload -Uz compinit && compinit
# remove git completion from homebrew's git installation (if git has been installed via homebrew)
# https://stackoverflow.com/a/65842518/12151830
rm -f $HOMEBREW_PREFIX/share/zsh/site-functions/_git

# ************ git prompt  ************
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'

# ************ aliases ************
# Homebrew alias for intel (x86) and M1 (ARM)
# https://stackoverflow.com/questions/64963370/error-cannot-install-in-homebrew-on-arm-processor-in-intel-default-prefix-usr/65398385?noredirect=1#comment115997092_65398385
# alias brew86="arch -x86_64 /usr/local/homebrew/bin/brew"
# alias brewARM="/opt/homebrew/bin/brew"

alias ..="cd .."
alias ...="cd"
alias zss="source ~/.zshrc"
alias zse="vim ~/.zshrc"
alias vre="vim ~/.vim/vimrc"
alias ll="ls -alhoG"
alias clc="clear"

# ************ vim mode ************
bindkey -v

# ************ syntax highlighting  ************
source /Users/sanket/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ************ tab completion  ************
# vim like smartcase for tab completion
zstyle ':completion:*'  matcher-list 'm:{a-z}={A-Z}'
