# making it prettier
if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi
set t_Co=256

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/.zsh_history
# tmux and zsh history sync
export HISTCONTROL=ignoredups:erasedups  # avoid duplicates..
setopt histappend  # After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"


zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.
# Basic auto/tab complete:
autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit


# cd with just Filename
setopt autocd

ZSHPLUG=/usr/share/zsh/plugins

source $ZSHPLUG/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSHPLUG/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSHPLUG/zsh-colored-man-pages/zsh-colored-man-pages.zsh
source $ZSHPLUG/aws_zsh_completer.sh

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

### SpaceShip settings ###

# settings
SPACESHIP_TIME_SHOW=true
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_CHAR_SYMBOL=❯
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_HG_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_VENV_SHOW=true
SPACESHIP_PYENV_SHOW=true
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_JOBS_SHOW=true

# using spaceship
autoload -U promptinit; promptinit
prompt spaceship

# fzf setup
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

### Personal list of alias ###

# better command alternative
alias b='bat'
alias tree='tree --dirsfirst -C'
alias diff='diff --color'
alias grep='grep --color'

alias gitd='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME'

alias docker='sudo docker'

# faster
alias l='exa --icons --group-directories-first -h'
alias la='exa --icons --group-directories-first -ah'
alias ll='exa --icons --group-directories-first -lah'
alias v='nvim'
alias c='clear'
alias cl='clear && l'
alias ca='clear && la'
alias f='lf'

# changing default
alias t='tree -d -L 4'

# custom
alias tc='tar zcvf'
alias tx='tar zxvf'

# quick config
alias vv='nvim ~/.config/nvim/init.vim'
alias vz='nvim ~/.config/zsh/.zshrc'
alias vk='nvim ~/.config/sxhkd/sxhkdrc'
alias vs='nvim -o $(find ~/.local/share/scripts -type f | fzf)'
alias vb='nvim ~/.config/bspwm/bspwmrc'
alias va='nvim ~/.config/alacritty/alacritty.yml'
alias vx='nvim ~/.xinitrc'
alias gl='git log --all --decorate --graph'

# searches

urlencode () {
    declare str="$*"
    declare encoded=""
    declare i c x
    for (( i=0; i<${#str}; i++ )) do
        c=${str:$i:1}
        case "$c" in
            [-_.!~a-zA-Z0-9] ) x="$c" ;;
            * ) printf -v x '%%%2x' "'$c" ;;
        esac
        encoded+="$x"
    done
    echo "$encoded"
}

duck () {
    declare url=$(urlencode "$*")
    lynx "https://duckduckgo.com/lite?q=$url"
}
alias "d"=duck
