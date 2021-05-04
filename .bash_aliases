# ~/.bash_aliases

# Custom Bash alias settings
alias sb="source ~/.bashrc"
alias vib="vi ~/.bashrc"
alias cab="cat ~/.bashrc"
alias cb="cab"
alias ca="cab"
alias cc="cab"
alias leb="less ~/.bashrc"

cdls ()
{
	\cd "$@" && ls -la
}
alias cd="cdls"
alias a="cd .."
alias cdw="cd ~/work"
alias cdh="cd /mnt/c/Users/user"

alias ll="ls -la"
alias l="ll"
alias hi="history"
alias hig="hi | grep"

alias qq="exit"

# My dotfile upload to Git
upbb (){
	cd ~/work/dotfile
	cobb
	gpada
	cpbb
	cd -
}
alias upb="upbb"

# copy home path dotfile to dotfile project
cobb (){
	echo "======== running ======== cob()"
	rsync -a ~/.bash_aliases ~/work/dotfile/
	rsync -a ~/.bash_profile ~/work/dotfile/
	rsync -a ~/.bashrc ~/work/dotfile/
	rsync -a ~/.gitconfig ~/work/dotfile/
	rsync -a ~/.profile ~/work/dotfile/
	rsync -a ~/.vim ~/work/dotfile/
	rsync -a ~/.vimrc ~/work/dotfile/
}
alias cob="cobb"
# copy dotfile project to home path dotfile and reloading
alias cpbb="cp -rf ~/work/dotfile/.bash_aliases ~/ cp -rf ~/work/dotfile/.bash_profile ~/ cp -rf ~/work/dotfile/.bashrc ~/ sb"

cpb (){
	echoo && alias cpbb && echoo
	cpbb
}

cpb (){
	echoo && alias cpbb && echoo
	cp -rf ~/work/dotfile/.bash_aliases ~/
	cp -rf ~/work/dotfile/.bash_profile ~/
	cp -rf ~/work/dotfile/.bashrc ~/
	sb
}

# Clipbord
# alias c="clip.exe"
# win32yank.exe
# https://github.com/equalsraf/win32yank/releases
alias c="win32yank.exe -i"
alias v="win32yank.exe -o"

# wsl in browser html
export BROWSER="explorer.exe"
alias start="explorer.exe"
alias web="explorer.exe"
alias html="explorer.exe"
alias view="explorer.exe"

# Custom npm alias settings
alias nr="npm run"

# Custom bashscript alias settings
echoo(){
	echo "======== running ========"
}

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
gcoa(){
	echoo && alias gcoauto && echoo
	gcoauto
}
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
alias gpcf="gh pr create -f"
gpc(){
	echoo && alias gpcf && echoo
	gpcf
}
alias gpmm="gh pr merge -m"
gpm(){
	echoo && alias gpmm && echoo
	gpmm
}
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
