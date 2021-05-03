# ~/.bashrc 

#### wsl default .bashrc settings Start
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
#### wsl default .bashrc settings End

# Custom Bash color setting


# Custom Bash alias settings
alias sb="source ~/.bashrc"
alias vib="vi ~/.bashrc"
alias cab="cat ~/.bashrc"
alias cb="cab"
alias ca="cab"
alias cc="cab"
alias leb="less ~/.bashrc"

# My dotfile upload to Git
upbb (){
	cd ~/work/dotfile
	cob
	gpada
	cpb
	cd -
}
alias upb="upbb"
# copy home path dotfile to dotfile project
cob (){
	echo "======== running ======== cob()"
	rsync -a ~/.bashrc ~/work/dotfile/
	rsync -a ~/.bash_profile ~/work/dotfile/
	rsync -a ~/.gitconfig ~/work/dotfile/
	rsync -a ~/.profile ~/work/dotfile/
	rsync -a ~/.vim ~/work/dotfile/
	rsync -a ~/.vimrc ~/work/dotfile/
}
# copy dotfile project to home path dotfile and reloading
alias cpb="cp -rf ~/work/dotfile/.bashrc ~/ && sb"
	echo "======== running ======== cpb()"

alias ll="ls -la"
alias l="ll"

alias hi="history"
alias hig="hi | grep"

# Clipbord
#alias c="clip.exe"
# win32yank.exe
# https://github.com/equalsraf/win32yank/releases
alias c="win32yank.exe -i"
alias v="win32yank.exe -o"

# wsl in browser html
export BROWSER="explorer.exe"
alias start="explorer.exe"
alias web="explorer.exe"
alias html="explorer.exe"


cdls ()
{
	\cd "$@" && ls -la
}
alias cd="cdls"

alias a="cd .."

alias cdw="cd ~/work"
alias cdh="cd /mnt/c/Users/user"

alias nr="npm run "

alias qq="exit"

# Custom Git alias settings
alias gpl="git pull origin master"
alias gb="git branch"
alias gba="gb -a"
alias gce="git checkout"
alias gced="git checkout dev"
alias gst="git status"
alias gs="gst"
alias gad="git add ."
alias ga="gad"
alias gco="git commit -m"
alias gcoauto="git commit -m fix:update"
alias gcoa="gcoauto"
alias gpu="git push -u"
alias gpum="git push -u origin master"
alias gpud="git push -u origin dev"
alias glo="git log --oneline --graph -n 12"
alias gl="glo"
alias gdi="git diff"
alias gd="gdi"

# Custom Github cli alias settings
alias grc="gh repo crete"
alias grv="gh repo view"
alias gv="grv"
alias grvw="grv --web"
alias gvw="grvw"
alias gpc="gh pr create -f"
alias gpm="gh pr merge -m"
alias gpv="gh pr view"
alias gplc="gh pr list -s closed -L 16"
alias gpvw="gh pr view -w"
alias gpv="gpvw"

gpada (){
	echo "======== running ======== gpada()"
	gced
	gpl
	gba
	gst
	gad
	gcoa
	gpud
	gpc
	gpm
	gpl
	glo
	gplc
	grvw
}
gpad (){
	echo "======== running ======== gpad()"
	gced
	gpl
	gad
	gcoa
	gpud
	gpc
	gpm
	gpl
}

#wsl login auto run script
#cdw

