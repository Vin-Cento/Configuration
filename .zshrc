### Antigen Package Manager ###
source /usr/share/zsh/share/antigen.zsh
source ~/.local/share/icons-in-terminal/icons_bash.sh
export PATH=$PATH:/home/avatar/.emacs.d/bin:/home/avatar/.local/share/scripts


# packages
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions 
antigen bundle MichaelAquilina/zsh-you-should-use
antigen bundle ael-code/zsh-colored-man-pages
# applying
antigen apply

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

### SpaceShip settings ###

# settings
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
SPACESHIP_VENV_SHOW=false
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
alias cat='bat'
alias ls='exa --icons'

alias gitd='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME'

# faster
alias l='exa -ah'
alias v='nvim'
alias c='clear'
alias tree='tree -C'

# sudo command
alias pacman='sudo pacman'
alias systemctl='sudo systemctl'

# changing default
alias tmux='tmux -f ~/.config/.tmux.conf'
alias t='tree -d -L 4'

# custom
alias todo='cat ~/.local/share/calcurse/apts'
alias die='systemctl hibernate && i3lock'
alias rest='systemctl suspend && i3lock'

