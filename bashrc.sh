PS1="[\033[1;00m\t\033[00m] \033[31m\w\033[1;00m\$ ";

# Echo some hefty aliases
alias ll='ls -l';
alias la='ls -a';
alias lla='ls -la';
alias l='ls';
alias lam='ls -A';
alias llam='ls -lA';
alias llr='ls -lR';
alias llsa='ls -lsa';

alias ns="netstat";
alias py="python";
alias mk="make";
alias lz="ls";
alias cls="clear";
alias nm="nmap";
alias rmf="rm -rf"; # hehe

if [[ -f '/data/data/com.termux/files/usr/bin/bat' ]]; then
	alias ccat="bat";
	echo "[*] All aliases set";
else
	echo "[*] Bat not found, install with: pkg install bat";
fi

export GREP_OPTIONS='--color=auto' GREP_COLOR='1;31';
alias grep='grep $GREP_OPTIONS';

flines () {
	if [ -z "$1" ]; then
		echo "No arguments passed.";
		return 1;
	fi
	wc -l "$1" | awk '{ print "Lines: %s", $0; }';
}


function watchdir {
	while true; do
		lla;
		sleep 2;
		clear;
	done
}
