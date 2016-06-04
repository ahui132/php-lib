#export
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export EDITOR="vim"
export CLICOLOR="xterm-color"
export PATH=$PATH:$HOME/bin
export GNUTERM=qt
export PROMPT='${ret_status}>%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}%{$reset_color%}'

# alias
alias vi='mvim'
alias cp='cp -i'
alias svnst='svn st'
alias l='ls -lah'
alias p3='python3'


#android sdk
#export PATH="/Users/hilojack/Downloads/android-sdk/platforms/":$PATH
export PATH=$PATH:~/.composer/vendor/bin
export ANDROID_HOME=/usr/local/opt/android-sdk

# go
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin


#git
#sh ~/.git.bash

# git complete
#tree /usr/local/etc/bash_completion.d
#adb-completion.bash git-completion.bash git-prompt.sh

# git command
alias gitup='git submodule init && git submodule update'
alias ga.='git add .'
function gcap(){
	git commit -am $1;
	git push;
}

# grep
mcd(){ mkdir -p $@; cd $1}
alias rgrep='grep -rn -F'
rgrep.(){ grep -rn -F $@ .}

# gbk
function iconvgbk(){
	if test $# -gt 0; then
		test -f $1 && iconv -c -f gbk -t utf-8  $1 > ~/tmp.txt && mv ~/tmp.txt $1 && echo "Successfully convert $file!";
	fi
}
function uniqfile(){
	if test $# -gt 0; then
		echo "waiting";
		sort $1 | uniq > ~/tmp.txt && mv ~/tmp.txt $1 && echo 'succ'
	fi
}

# loop shell command
function loop(){
	while true;do
		#printf "\r%s" "`$*`";
		printf "\n%s" "`$@`";
		sleep 1;
	done
}

# mda
function mda (){
        mkdir -p $1
        sudo chmod a+rwx $1
}

[ -f ~/.private ] && source ~/.private
