install:
	sudo cp youloop.service /etc/systemd/user/
	systemctl enable --user youloop.service
	systemctl start --user youloop.service
