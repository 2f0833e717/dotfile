# ~/.bashrc 

# Custom Bash alias settings
alias sb="source ~/.bashrc"
alias vib="vi ~/.bashrc"
alias cab="cat ~/.bashrc"
alias leb="less ~/.bashrc"
alias upb="upbb"
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
}
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
alias gpl="git pull"
alias gb="git branch"
alias gba="gb -a"
alias gce="git checkout"
alias gs="git status"
alias ga="git add ."
alias gco="git commit -m"
alias gpu="git push -u origin"
alias glo="git log --oneline --graph --all"
alias gl="glo"
alias gd="git diff"

# Custom Github cli alias settings
alias grc="gh repo crete"
alias grv="gh repo view"
alias gv="grv"
alias grvw="grv --web"
alias gvw="grvw"
alias gpc="gh pr create -f"
alias gpm="gh pr merge -m"
alias gpv="gh pr view"
alias gpw="gh pr view -w"
gpa ()
{
	gb -a | ga | gs | gco $1 | gd | gpc | gpm | gl
}


#wsl login auto run script
#cdw

