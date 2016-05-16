install:
	sudo install --owner root --group root --mode 755 youloop /usr/local/bin/
	mkdir -p ~/.config/systemd/user/
	cp youloop.service ~/.config/systemd/user/
	systemctl --user enable --now youloop.service

uninstall:
	systemctl --user disable --now youloop.service
	rm ~/.config/systemd/user/youloop.service
	sudo rm /usr/local/bin/youloop

install-deps:
	# This must all be run on one line to stay within the same subshell
	if [ -f /etc/debian_version ] ; then sudo apt-get update ; sudo apt-get install xclip youtube-dl mpv -y ; fi
	if [ -f /etc/arch-release ] ; then sudo pacman -Syu ; sudo pacman -S mpv youtube-dl xclip ; fi
