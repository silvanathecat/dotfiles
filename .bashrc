
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias dl='sudo pacman -S'
alias update='sudo pacman -Syu'
alias neofetch='hyfetch'
alias lock='i3lock -c 000000'
alias c='clear'
alias clr='clear'
alias i3config='nano /home/silvanathecat/.config/i3/config'
alias c4='clear && clear && clear && clear'
alias yes='echo no fuck you'
alias poweroff='systemctl poweroff'
alias dcl='openssl aria-256-ctr -iter 1000 -d < /home/silvanathecat/writing/pvmef.txt.aria-256-ctr > /home/silvanathecat/writing/pvmef.txt && rm /home/silvanathecat/writing/pvmef.txt.aria-256-ctr'
alias ecl='openssl aria-256-ctr -iter 1000 < /home/silvanathecat/writing/pvmef.txt > /home/silvanathecat/writing/pvmef.txt.aria-256-ctr && rm /home/silvanathecat/writing/pvmef.txt'
alias wcl='nano /home/silvanathecat/writing/pvmef.txt'
alias blacklist='sudo pacman -Sg | grep blackarch'
alias brc='nano /home/silvanathecat/.bashrc'
alias sb='source /home/silvanathecat/.bashrc'
alias ndwc-school='nmcli device wifi connect GCS-MBL password GhSW1r3LL355'
alias nc='nordvpn connect'
alias nd='nordvpn disconnect'
alias nr='nordvpn rate'
alias ns='nordvpn status'
function ultraclear() {
	for i in {1..26214400}; do
		run clear
	done
}
function runpy() {
		#return when not enough arguments
	if [ -z "$1"]; then
		echo "Error: Not Enough Args"
		return 1
	fi 
		#run the python
	python ~/Documents/PyFiles/""$1"".py
}

function wifiquery() {
	#define the string
	wifitestc='ping google.com -c 1 | grep data'
	wifitestd='ping google.com -c 1 | grep failure'
		#test the string
	if [[ $wifitestc == *"data"* ]]; then
		echo "WAN is connected"
	elif [[ $wifitestc != *"data"* ]]; then
		echo "WAN is disconnected, checking further"
		if [[ $wifitestd == *" ]]
	else
		echo "Either there's no WAN or I fucked up"
	fi
}
#making shorthand because im a lazy idiot
alias wq='wifiquery'

eval "$(thefuck --alias)"
# Chromium bullshit
export PATH="/home/silvanathecat/depot_tools:$PATH"
