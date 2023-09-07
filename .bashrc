	#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

#neofetch --ascii ~/ascii.txt
neofetch --source ~/.config/neofetch/neofetch-img/img.png --image_size 200

eval "$(thefuck --alias)"
