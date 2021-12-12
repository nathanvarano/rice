PATH="$HOME/scr:$PATH"
export PATH
export VIMINIT="set nocp | source ${XDG_CONFIG_HOME:-$HOME/.config}/vim/vimrc"

export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#21292F,hl:#96BFFF --color=fg+:#f8f8f2,bg+:#44475a,hl+:#96BFFF --color=info:#C5DFFF,prompt:#8CA2E6,pointer:#96BFFF --color=marker:#96BFFF,spinner:#C5DFFF,header:#C5DFFF'

#export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$ZDOTDIR/.zsh_history"
setopt appendhistory

# vi mode
bindkey -v
export KEYTIMEOUT=1
bindkey "^?" backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] ||
	   [[ $1 = 'block' ]]; then
	  	echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main ]] ||
	     [[ ${KEYMAP} == viins ]] ||
	     [[ ${KEYMAP} == '' ]] ||
	     [[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
	fi
}
zle -N zle-keymap-select
zle-line-init() {
	zle -K viins # initiate 'vi insert' as keymap
	echo -ne "\e[5 q"
}
zle -N zle-line-init

_fix_cursor() {
	echo -ne '\e[5 q'
}

precmd_functions+=(_fix_cursor)

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d $HOME/.cache/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)

[[ $- != *i* ]] && return

source $HOME/.local/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.local/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/scr/srcenv
source $HOME/.config/zsh/zsh_alias


autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'
setopt PROMPT_SUBST

PS1='%F{14}%1~ %f%F{13}${vcs_info_msg_0_} '
echo ' '
PATH=/home/nv/rep/cookaborough/bin:$PATH
