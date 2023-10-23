#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\n\[\e[32m\]\u@\H \[\e[01;34m\]\w \n\[\e[00m\]\$ '

alias ls='ls --color=auto'
alias ll='ls -la'
alias py='python'
alias wifi='sudo iwctl station wlan0'
alias pip='py -m pip'
alias surft='tabbed -c surf -e'
alias '?'='echo "text editor: vim, nano 
file browser: ranger
system resources: gotop
battery: acpi
audio: alsamixer
browser: firefox, palemoon, surf
network manager: iwd (sudo iwctl)"'
brightness() {
	if [[ $1 > 0 ]]
	then
		echo $1 | sudo tee /sys/class/backlight/nv_backlight/brightness
	else
		cat /sys/class/backlight/nv_backlight/brightness
	fi
}
#PS1='[\u@\h \W]\$ '

LS_COLORS='rs=0:di=01;34:ln=target:mh=00:pi=01;35:so=01;35:do=01;35:bd=01;91:cd=01;91:or=03;37:mi=00;09:su=04;31:sg=04;31:ca=00:tw=01;03;34:ow=01;03;34:st=01;34:ex=31:*.tar=33:*.tgz=33:*.arc=33:*.arj=33:*.taz=33:*.lha=33:*.lz4=33:*.lzh=33:*.lzma=33:*.tlz=33:*.txz=33:*.tzo=33:*.t7z=33:*.zip=33:*.z=33:*.dz=33:*.gz=33:*.lrz=33:*.lz=33:*.lzo=33:*.xz=33:*.zst=33:*.tzst=33:*.bz2=33:*.bz=33:*.tbz=33:*.tbz2=33:*.tz=33:*.deb=33:*.rpm=33:*.jar=33:*.war=33:*.ear=33:*.sar=33:*.rar=33:*.alz=33:*.ace=33:*.zoo=33:*.cpio=33:*.7z=33:*.rz=33:*.cab=33:*.wim=33:*.swm=33:*.dwm=33:*.esd=33:*.avif=95:*.jpg=95:*.jpeg=95:*.ase=95:*.aseprite=95:*.mjpg=95:*.mjpeg=95:*.gif=95:*.bmp=95:*.pbm=95:*.pgm=95:*.ppm=95:*.tga=95:*.xbm=95:*.xpm=95:*.tif=95:*.tiff=95:*.png=95:*.svg=95:*.svgz=95:*.mng=95:*.pcx=95:*.mov=95:*.mpg=95:*.mpeg=95:*.m2v=95:*.mkv=95:*.webm=95:*.webp=95:*.ogm=95:*.mp4=95:*.m4v=95:*.mp4v=95:*.vob=95:*.qt=95:*.nuv=95:*.wmv=95:*.asf=95:*.rm=95:*.rmvb=95:*.flc=95:*.avi=95:*.fli=95:*.flv=95:*.gl=95:*.dl=95:*.xcf=95:*.xwd=95:*.yuv=95:*.cgm=95:*.emf=95:*.ogv=95:*.ogx=95:*.aac=92:*.au=92:*.flac=92:*.m4a=92:*.mid=92:*.midi=92:*.mka=92:*.mp3=92:*.mpc=92:*.ogg=92:*.ra=92:*.wav=92:*.oga=92:*.opus=92:*.spx=92:*.xspf=92:*~=00;90:*#=00;90:*.bak=00;90:*.old=00;90:*.orig=00;90:*.part=00;90:*.rej=00;90:*.swp=00;90:*.tmp=00;90:*.dpkg-dist=00;90:*.dpkg-old=00;90:*.ucf-dist=00;90:*.ucf-new=00;90:*.ucf-old=00;90:*.rpmnew=00;90:*.rpmorig=00;90:*.rpmsave=00;90:';
export LS_COLORS

