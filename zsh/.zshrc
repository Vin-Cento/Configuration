# making it prettier
if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi
set t_Co=256

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/.zsh_history

# tmux and zsh history sync
setopt CORRECT
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt EXTENDED_HISTORY


zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.
# Basic auto/tab complete:
autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit
complete -C '/usr/bin/aws_completer' aws

# cd with just Filename
setopt autocd

# ZSHPLUG=/usr/share/zsh/plugins
ZSHPLUG=$HOME/.config/zsh/plugins/

source $ZSHPLUG/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSHPLUG/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSHPLUG/zsh-colored-man-pages/zsh-colored-man-pages.zsh
source $ZSHPLUG/aws_zsh_completer.zsh
source $ZSHPLUG/cd_ls.zsh

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
SPACESHIP_TIME_12HR=true
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_CHAR_SYMBOL=$
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
SPACESHIP_AWS_SHOW=true
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
SPACESHIP_DIR_TRUNC=3

# using spaceship
autoload -U promptinit; promptinit
prompt spaceship

# fzf setup
source $ZDOTDIR/plugins/fzf/completion.zsh
source $ZDOTDIR/plugins/fzf/key-bindings.zsh


string2arg() {
    export arg_filename=$(cut -d":" -f1 <<< $1);
    export arg_linenum=$(cut -d":" -f2 <<< $1);
    min_offset=25
    let max_offset="min_offset*3"
    min=0
    if (($min_offset < $arg_linenum)); then
        let min="arg_linenum-$min_offset"
    fi
    let max="arg_linenum+$max_offset"
    bat --color=always --highlight-line $arg_linenum --style=header,grid,numbers --line-range $min:$max $arg_filename;
}

### Personal list of alias ###

    # better command alternative
alias s='bat'
alias tree='tree --dirsfirst -C'
alias diff='diff --color'
alias grep='grep --color'

alias gitd='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME'

alias pacman='sudo pacman'
alias openvpn='sudo openvpn'
alias docker='sudo docker'
alias kill='sudo kill'

    # faster
alias l='exa --icons -lh --group-directories-first'
alias ll='exa --icons -lh --grid --group-directories-first'
alias la='exa --icons --group-directories-first -lah --grid'
alias v='nvim'
alias c='clear'
alias cl='clear && l'
alias ca='clear && la'
alias f='lf'
alias t='tree -d -L 4'
alias p='ipython'
alias vv='nvim $(rg --hidden -l "" ~/.config/nvim | fzf)'
alias vw='nvim ~/Documents/.vimwiki/index.md'
alias vz='nvim ~/.config/zsh/.zshrc'
alias vk='nvim ~/.config/sxhkd/sxhkdrc'
alias vs='nvim -o $(find /home/vinny/.config/nvim/pluggin/vim-snippets/snippets -type f | fzf)'
alias va='nvim ~/.config/alacritty/alacritty.yml'
alias gl='git log --all --decorate --graph'
alias b='mpv ~/Musics/Alarm_Clock_Sound_Effect.ogg'
alias tc='tar zcvf'
alias tx='tar zxvf'

alias fsearch='rg . -n -g "!*.html" | fzf --preview="source ~/string2arg.sh; string2arg {}"'
alias ff='export vfile=$(fsearch);nvim +$(cut -d":" -f2 <<< $vfile) $(cut -d":" -f1 <<< $vfile)'


eval "$(lua ~/.config/zsh/plugins/z.lua/z.lua --init zsh)"
eval "$(lua ~/.config/zsh/plugins/z.lua/z.lua --init bash enhanced once)"
_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS" && unset _JAVA_OPTIONS && alias java='java "$_SILENT_JAVA_OPTIONS"'

# uncomment when using node
# source /usr/share/nvm/init-nvm.sh
# source "/home/vinny/.sdkman/bin/sdkman-init.sh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$XDG_DATA_HOME/.sdkman"
[[ -s "$XDG_DATA_HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$XDG_DATA_HOME/.sdkman/bin/sdkman-init.sh"
