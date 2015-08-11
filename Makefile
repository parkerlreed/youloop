install:
	sudo install --owner root --group root --mode 755 youloop /usr/local/bin/
	mkdir -p ~/.config/systemd/user/
	cp youloop.service ~/.config/systemd/user/
	systemctl enable --user youloop.service
	systemctl start --user youloop.service

uninstall:
	systemctl stop --user youloop.service
	systemctl disable --user youloop.service
	rm ~/.config/systemd/user/youloop.service
	sudo rm /usr/local/bin/youloop

install-deps:
	# This must all be run on one line to stay within the same subshell
	if [ -f /etc/debian_version ] ; then sudo apt-get update ; sudo apt-get install xclip mpv -y ; fi

