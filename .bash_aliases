# ~/.bash_aliases

# root command
alias root="sudo su -"

# Custom vscode alias settings
alias vs="code ."
alias vscode="vs"
alias ca="vs"
alias co="vs"
alias cc="vs"

# Custom cursor alias settings
alias cursor="cursor ."
alias cur="cursor"

# vscode not work remote wsl @ work around
alias reloadvs="rm -rf ~/.vscode-server"
alias reloadcode="reloadvs"
alias reloadvscode="reloadvs"

# Custom Bash alias settings
alias sb="source ~/.bashrc"
alias vib="vi ~/.bash_aliases"
alias cab="cat ~/.bash_aliases"
alias cb="cab"
alias leb="less ~/.bash_aliases"

cdls ()
{
	\cd "$@" && ls -la
}
alias cd="cdls"
alias a="cd .."
alias cdw="cd ~/work"
alias cdh="cd /mnt/c/Users/"
alias cdp="cd /mnt/d/Project/"

alias ll="ls -la"
alias l="ll"
alias hi="history"
alias hig="hi | grep"

alias qq="exit"

# Custom Bash Script alias settings
echoo(){
	echo "======== alias ========"
}

# My dotfile upload to Git
alias upbb="
	cd ~/work/dotfile
	gpadf ||
	gceda && gplda ||
	coba && gpadaa && cpba
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
	cp -rf ~/work/dotfile/.bash_aliases ~/
	cp -rf ~/work/dotfile/.bash_profile ~/
	cp -rf ~/work/dotfile/.bashrc ~/
	cp -rf ~/work/dotfile/.gitconfig ~/
	cp -rf ~/work/dotfile/.profile ~/
	cp -rf ~/work/dotfile/.vim ~/
	cp -rf ~/work/dotfile/.vimrc ~/
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

# Custom Github api alias settings
grvl(){
	curl -f -s -L https://api.github.com/users/2f0833e717/repos | \
	grep "clone_url" | \
	sed -e "s/\"clone_url\"\:\s\"//" | \
	sed -e "s/\"\,$//"
}

# Custom bash deploy echo alias settings
alias doca="echoo && alias doc && doc"
alias gceda="echoo && alias gced && gced"
alias gcebda="echoo && alias gcebd && gcebd"
alias gpla="echoo && alias gpl && gpl"
alias gplda="echoo && alias gpld && gpld"
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
alias gpadaa="echoo && alias gpada && gpada"
alias gpadna="echoo && alias gpadn && gpadn"

# Custom npm alias settings
alias nr="npm run"
alias pa="cat package.json"

# Custom doctoc alias settings
alias docdel="sed -i -e 's/\*\*Table of Contents\*\*  \*generated with \[DocToc\](https\:\/\/github\.com\/thlorenz\/doctoc)\*//g' ./README.md"
alias doc="find . -type f -name \"*.md\" -not -path \"*/node_modules/*\" -not -path \"*/.git/*\" -exec sh -c 'doctoc {} && sed -i -e \"s/\*\*Table of Contents\*\*  \*generated with \[DocToc\](https\:\/\/github\.com\/thlorenz\/doctoc)\*//g\" -e \"/^## 目次/,/^<!-- START doctoc/{ /^<!-- START doctoc/!d; }\" -e \"s/<!-- START doctoc/## 目次\n\n<!-- START doctoc/g\" {}' \;"

# Custom first commit Git alias settings
# step1. git clone {projet-repo-url}
# step2. cd {projet-folder}
# step3. grc # enter x 3 # Yes
# ? This will add an "origin" git remote to your local repository. Continue? Yes
# step4. gfc
alias gfc="gad && gco "initial" && gpum && gcebd && gpud"

# Custom Git alias settings
alias gcl="git clone"
alias gpl="git pull origin main"
alias gpld="git pull origin dev"
alias gb="git branch"
alias gba="git branch -a"
alias gce="git checkout"
alias gced="git checkout dev"
alias gcebd="git checkout -b dev"
alias gst="git status"
alias gs="gst"
alias gad="git add ."
alias ga="gad"
alias gco="git commit -m"
alias gcoa="git commit -m 'fix: update'"
alias gpu="git push -u"
alias gpum="git push -u origin main"
alias gpud="git push -u origin dev"
alias glo="git log --oneline --graph -n 12"
alias gl="glo"
alias gdi="git diff"
alias gd="gdi"

# Custom Github cli alias settings
alias grc="gh repo create"
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

# Custom bash deploy alias settings
alias gpada="
	doca || gbaa && gsta && gada && gcoaa && gpuda && gpca && gpma && gpla && gloa && gplca && grvwa"
alias gpadn="
	doca || gada && gcoaa && gpuda && gpca && gpma && gpla"

