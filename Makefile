install:
	mkdir -p ~/.config/systemd/user/
	cp youloop.service ~/.config/systemd/user/
	systemctl enable --user youloop.service
	systemctl start --user youloop.service
