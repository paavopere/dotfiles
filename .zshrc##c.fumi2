# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' prompt 'correct> '
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/home/paavo/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
prompt walters
# End of lines added by compinstall

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep
bindkey -v

source /usr/share/zsh/share/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-autosuggestions
antigen theme robbyrussell
antigen apply


alias vi="vim"
EDITOR=vim
