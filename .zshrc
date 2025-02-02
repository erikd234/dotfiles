# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# #CUSTOM
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## Start of CUSTOM ZSH config
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# This was my OLD BashRC config below here.
export PATH=$PATH:/home/erik/.local/bin
export PATH=$PATH:/home/erik/appimages
export PATH=$PATH:/home/erik/go/bin
export PATH=$PATH:/home/erik/appimages

export PATH=$PATH:/usr/local/sqlite
source /usr/share/nvm/init-nvm.sh
export PATH="/home/erik/.ebcli-virtual-env/executables:$PATH"
# SLOW
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export XMODIFIERS=@im=xim
export XDG_CONFIG_HOME="$HOME/.config"
dev() {
    cd ~/dev/
}
work() {
    cd ~/work/
}

fix_mouse() {
    echo "Fixing the mouse..."
    sudo modprobe -r i2c_hid && sudo modprobe i2c_hid
    sudo udevadm trigger
    echo "Mouse fixed!"
}

# Here is the process to select the correct sound card ALWAYS
# AN upgrade to GNOME UI would be to make a "select default Device" option
#

# First set the activate the sound card profile desired
#

sink_count=$(pactl list sinks | grep -c '^Sink #');

if [ $sink_count -eq 1 ]; then
    echo > /dev/null
else
    # Chose laptop soundcard
    pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:analog-stereo
    pactl set-default-sink alsa_output.pci-0000_00_1f.3.analog-stereo
fi


# Next activate the desired sink

zshrc() {
   nvim ~/.zshrc
}

downloads() {
	cd ~/Downloads
}

fix_screen() {
	xrandr --output $SCREEN --rotate normal
}

i2c() {
    pushd /home/erik/personal-dev/fastimg/
    sudo ./fastimg
    popd
}

alias x='xclip -selection clipboard -o "$@"'
alias s='sgpt "$@"'
alias g='git "$@"'
alias gs='git status "$@"'
alias ga='git add "$@"'
alias gp='git pull "$@"'
alias gc='git commit "$@"'
alias gpu='git push "$@"'
alias schat='sgpt --chat schat "$@"'
alias schatn='rm /tmp/chat_cache/schat && sgpt --chat schat "$@"'
alias srepl='sgpt --repl schat'
alias vim='nvim "$@"'
alias note='nvim note_$(date +"%Y%m%d_%H%M%S_%N").txt'
alias parrot='cd ~/work/parrot/'
alias sparrot='cd ~/work/parrot/server'
alias cparrotc='cd ~/work/parrot/client'
#disable_saver() {
#   xset s off      # Disable screen saver
#   xset -dpms      # Disable DPMS
#}
#
alias config='/usr/bin/git --git-dir=/home/erik/.cfg/ --work-tree=$HOME'
zstyle ':autocomplete:*' delay 3.0  # seconds (float)


# Function to change font size
change_font_size() {
    local current_size
    current_size=$(echo $TERM_FONT_SIZE | grep -o '[0-9]*$')

    if [[ $1 == "increase" ]]; then
        ((current_size++))
    elif [[ $1 == "decrease" ]]; then
        ((current_size--))
    fi

    TERM_FONT_SIZE="xft:0xProtoNerdFontMono-Regular:size=$current_size"
    printf '\33]50;%s\007' "$TERM_FONT_SIZE"
}
incresae_font_size() {
    change_font_size increase
}
decrease_font_size() {
    change_font_size decrease
}
nvim_it() {
    nvim .
}

# Set initial font size
TERM_FONT_SIZE="xft:0xProtoNerdFontMono-Regular:size=12"
printf '\33]50;%s\007' "$TERM_FONT_SIZE"
# Bind keys
bindkey -s '^[=' 'incresae_font_size\n'
bindkey -s '^[-' 'decrease_font_size\n'
bindkey -s '^W' 'nvim_it\n'
export XDG_DATA_DIRS="$HOME/.local/share/applications:/usr/share/applications"

backup() {
    BACKUP_DATE=$(date +%Y-%m-%d_%H-%M-%S)
    rsync -avh --progress --delete /home/erik/ erik@192.168.1.126:/home/erik/eos-bkp-$BACKUP_DATE/
}

# Function to lint first, then run your Go application with any arguments.
go-run() {
  # First run your linter
  golangci-lint run

  # Then pass all arguments along to `go run`
  go run "$@"
}

# Function to lint first, then build your Go application with any arguments.
go-build() {
  golangci-lint run
  go build "$@"
}
