export PATH=$PATH:$HOME/.config/cargo/bin:$HOME/.local/share/scripts:$HOME/.local/bin:$HOME/.config/bin/
export LS_COLORS="$(vivid generate ~/.config/vivid/tokyo.yml)"


export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
export TERMINAL="alacritty"
export EDITOR="nvim"

# Other XDG paths
export XDG_DATA_HOME=~/.local/share
export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export LYNX_CFG=~/.config/lynx/lynx.cfg
export LYNX_LSS=~/.config/lynx/lynx.lss
export IPYTHONDIR=~/.config/ipython

# Doesn't seem to work
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ANDROID_AVD_HOME="$XDG_DATA_HOME"/android
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android

# Disable files
export LESSHISTFILE=-

export CARGO_HOME=$XDG_DATA_HOME/cargo
export RUSTUP_HOME=$XDG_DATA_HOME/rustup
export GOPATH=$XDG_DATA_HOME/go

# Fixing Paths
export GNUPGHOME="$XDG_DATA_HOME"/.gnupg
export GEM_PATH="$XDG_DATA_HOME/ruby/gems"
export GEM_SPEC_CACHE="$XDG_DATA_HOME/ruby/specs"
export GEM_HOME="$XDG_DATA_HOME/ruby/gems"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export ZDOTDIR=$HOME/.config/zsh
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/ripgreprc"

# export FZF_DEFAULT_COMMAND='rg --hidden -l ""'
export FZF_DEFAULT_COMMAND="fd --type file --color=always"
export FZF_DEFAULT_OPTS="--reverse --inline-info --ansi"
export FZF_COMPLETION_TRIGGER=']]'
