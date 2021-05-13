# ************ git completion ************
# https://stackoverflow.com/a/58517668/12151830
autoload -Uz compinit && compinit
# remove git completion from homebrew's git installation (if git has been installed via homebrew)
# https://stackoverflow.com/a/65842518/12151830
rm -f $HOMEBREW_PREFIX/share/zsh/site-functions/_git

# ************ git prompt  ************
# 1. Either do this ---
# autoload -Uz vcs_info
# precmd_vcs_info() { vcs_info }
# precmd_functions+=( precmd_vcs_info )
# setopt prompt_subst
# RPROMPT=\$vcs_info_msg_0_
# # PROMPT=\$vcs_info_msg_0_'%# '
# zstyle ':vcs_info:git:*' formats '%b'
# 
# 2. OR do this ---
source ~/.git-prompt.sh
	# 2.1
	# precmd () { __git_ps1 "%n" ":%~$ " "|%s" }
	# OR
	# 2.2
 	setopt PROMPT_SUBST
 	# PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '
 	PS1='%B%K{17}$(__git_ps1 "[%s]")%b%k%F{red}%K{black}%c%f%k %F{127}\$ %f'

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCOLORHINTS=1

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
alias ll="ls -alhoG --color"
alias clc="clear"
alias rr="ranger"
alias glogin="eval \`ssh-agent\`; ssh-add"
alias dwc="cd ~/oss/suckless/dwm"
alias stc="cd ~/oss/suckless/st"
alias tt="taskwarrior-tui"
alias t="task"


# ************ vim mode ************
bindkey -v

# ************ multibyte characters ************
# https://unix.stackexchange.com/questions/598440/zsh-indic-fonts-support-rendering-issue-which-is-working-fine-on-bash
set -o combiningchars


# locales
export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8
export LANGUAGE=en_IN.UTF-8

# ************* save zsh history *************
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Install Ruby Gems to ~/gems
# https://jekyllrb.com/docs/installation/ubuntu/
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

# when installing blogit, got warning to add below directory to PATH
# as blogit (and its dependencies) are installed to ~/.local/bin
# https://gitlab.com/oz123/blogit
export PATH=$HOME/.local/bin:$PATH

# ************ tab completion  ************
# vim like smartcase for tab completion
zstyle ':completion:*'  matcher-list 'm:{a-z}={A-Z}'
#
# ************ syntax highlighting  ************
# install from https://github.com/zsh-users/zsh-syntax-highlighting
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# include newly installed packages in zsh tab completion on Arch
# https://wiki.archlinux.org/title/zsh#Persistent_rehash
zstyle ':completion:*' rehash true
