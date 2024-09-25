#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  startx
fi

# Added by Toolbox App
export PATH="$PATH:/home/silvanathecat/.local/share/JetBrains/Toolbox/scripts"

