# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="juanghurtado"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git lol colored-man-pages cp emacs node npm git-flow vim archlinux sublime react-native)

# User configuration

export PATH="/bin:/sbin:/usr/bin:/usr/local/bin:/usr/sbin:/usr/heimdal/bin:/usr/heimdal/sbin:/home/alex/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#Locales
export LANGUAGE=fr_FR.UTF-8
export LANG=fr_FR.UTF-8
export LC_ALL=fr_FR.UTF-8

export EDITOR='nvim'
export HISTSIZE=10000
export MAIL="/u/all/${USER}/mail/${USER}"
export PAGER='more'
#export PS1="(\u@\h \#)"
export SAVEHIST=10000
export WATCH='all'
export TERM=xterm-256color

alias ls='ls --color'
alias ll='ls -l'
alias la='ls -la'
alias ..='cd ..'

alias j='jobs'
alias tree='tree -C'
alias emacs='emacs -nw'
alias e='emacs'
alias vi='nvim'
alias vol='alsamixergui'
alias xfce='xfce4-session'
alias update='pkcon update'
alias lock='xscreensaver-command -lock'
#alias man='~/bin/mantrol.sh'
alias shut='shutdown now'
alias pika='cat pika.txt'
alias flux='xflux -z 2361'
alias clone='gitclone.sh'
alias cc='cc -fdiagnostics-color=always'
alias gcc='gcc -Wall -Wextra -Werror'
alias lal='xlock -nolock'
#alias sl='~/sl/sl'
alias lol='xrandr -o normal ; setxkbmap fr'
#alias man='man.sh'
alias дщд='lol'
alias dock='cairo'
alias dublescreen='arandf'

alias op='open_command'

alias grep='grep --color=auto'
alias df='df -hT -x tmpfs -x devtmpfs'
alias free='free -ht'
alias pacman='sudo pacman'

#compile
#alias make='make --no-print-directory'
alias re='mr_clean ; make re ; make clean'
alias clean='make clean'
alias fclean='make fclean'
alias lre='make lre'
alias valgrind='valgrind --leak-check=full'

alias brdown='xrandr --output eDP1 --brightness 1'
alias brup='xrandr --output eDP1 --brightness 1.5'
alias brtop='xrandr --output eDP1 --brightness 2'

alias cmakeclean='rm -rf CMakeFiles cmake_install.cmake CMakeCache.txt'
#alias rm='mv $1 ~/.trash'

alias jj='java -jar'

alias df='df -h'                          # human-readable sizes

#creer le prototipage des fonctions
alias makeheader='find . -maxdepth 1 -name "*.c" -type f -exec echo "{}" \; -exec cat "{}" \; | grep "^[a-z\.].*[^;]$" | grep -v "typedef" | sed -e "s/$/;/" -e "s/\t\t/\t/" -e "s/^.\//\n\/* Function(s) in file /" -e "s/.c;$/.c *\//"'

alias emu='/home/alex/Android/Sdk/tools/emulator -netdelay none -netspeed full -avd Nexus_5_API_22  -use-system-libs'

alias startSQL='_ /usr/bin/mysqld_safe --datadir="/var/lib/mysql"'

#xrandr -x
export JAVA_HOME=/usr/lib/jvm/default/
# sh /home/alex/antiagor
alias gitkraken='gitkraken -p `pwd`'
alias yaourt='echo you mean trizen'

export PATH=/home/alex/.local/bin:$PATH
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias ethminer='sheatCode ; ethminer'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

