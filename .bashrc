# ~/.bashrc 

# Custom Bash alias settings
alias sb="source ~/.bashrc"
alias vib="vi ~/.bashrc"
alias cab="cat ~/.bashrc"
alias cb="cab"
alias ca="cab"
alias leb="less ~/.bashrc"
upbb (){
	cd ~/work/dotfile
	gce dev
	cp -rf ~/.bashrc ~/work/dotfile/
	ga
	gs
	gco "fix: update"
	gpc
	gpm
	cd -
	cpb
}
alias upb="upbb"
alias cpb="cp -rf ~/work/dotfile/.bashrc ~/ | sb"

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
alias gst="git status"
alias gs="gst"
alias gad="git add ."
alias ga="gad"
alias gco="git commit -m"
alias gcoauto="git commit -m fix:update"
alias gcoa="gcoauto"
alias gpu="git push -u origin"
alias gpum="git push -u origin master"
alias gpud="git push -u origin dev"
alias glo="git log --oneline --graph"
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
alias gpvw="gh pr view -w"
alias gpv="gpvw"
gpai ()
{
	gb -a | gad | gst | gco $1 | gpu $2 | gdi | gpc | gpm | glo
}
gpa ()
{
	gad|gcoa|gpud|gpc|gpm
}


#wsl login auto run script
#cdw

