install:
	sudo cp youloop.service /etc/systemd/user/
	systemctl enable --user youloop.service
	systemctl start --user youloop.service

install-deps:
	# This must all be run on one line to stay within the same subshell
	if [ -f /etc/debian_version ] ; then sudo apt-get update ; sudo apt-get install mpv -y ; fi

