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

# Custom bashscript alias settings
echoo(){
	echo "======== alias ========"
}

# My dotfile upload to Git
alias upbb="
	cd ~/work/dotfile
	coba
	gpada
	cpba
	cd -"
alias upb="upbb"

# copy home path dotfile to dotfile project
alias cob="
	cp -rf ~/.bash_aliases ~/work/dotfile/
	cp -rf ~/.bash_profile ~/work/dotfile/
	cp -rf ~/.bashrc ~/work/dotfile/
	cp -rf ~/.gitconfig ~/work/dotfile/
	cp -rf ~/.profile ~/work/dotfile/
	cp -rf ~/.vim ~/work/dotfile/
	cp -rf ~/.vimrc ~/work/dotfile/"

# copy dotfile project to home path dotfile and reloading
alias cpb="
	cp -rf ./ ~/
	sb"

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

# Custom Git alias settings
alias gpl="git pull origin master"
alias gb="git branch"
alias gba="git branch -a"
alias gce="git checkout"
alias gced="git checkout dev"
alias gst="git status"
alias gs="gst"
alias gad="git add ."
alias ga="gad"
alias gco="git commit -m"
alias gcoa="git commit -m fix:update"
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
alias grvw="gh repo view --web"
alias gvw="grvw"
alias gpc="gh pr create -f"
alias gpm="gh pr merge -m"
alias gpv="gh pr view"
alias gplc="gh pr list -s closed -L 16"
alias gpvw="gh pr view -w"
alias gpv="gpvw"

# Custom bash deploy echo alias settings
alias gceda="echoo && alias gced && gced"
alias gpla="echoo && alias gpl && gpl"
alias gbaa="echoo && alias gba && gba"
alias gsta="echoo && alias gst && gst"
alias gada="echoo && alias gad && gad"
alias gcoaa="echoo && alias gcoa && gcoa"
alias gpuda="echoo && alias gpud && gpud"
alias gpca="echoo && alias gpc && gpc"
alias gpma="echoo && alias gpm && gpm"
alias gloa="echoo && alias glo && glo"
alias gplca="echoo && alias gplc && gplc"
alias grvwa="echoo && alias grvw && grvw"
alias coba="echoo && alias cob && cob"
alias cpba="echoo && alias cpb && cpb"

alias gpada="gceda && gpla && gbaa && gsta && gada && gcoaa && gpuda && gpca && gpma && gpla && gloa && gplca && grvwa"
alias gpad="gceda && gpla && gada && gcoaa && gpuda && gpca && gpma && gpla"
