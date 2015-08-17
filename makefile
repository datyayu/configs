all: dev_installs dev_packages
complete_install: system_installs dev_installs dev_packages postinstall


preinstall:
	# Install git.
	sudo apt-get install git
	# Setting up SSH Keys.
	ssh-keygen -C aoitsu3@gmail.com -t rsa
	# Setting up git credentials.
	git config --global user.name "Arturo Coronel"
	git config --global user.email "aoitsu3@gmail.com"
	git config --global color.ui auto


system_installs:
	# Installing Sistem stuff.
	sudo apt-get install konsole python-software-properties software-properties-common zsh autoconf automake bison build-essential curl git-core libapr1 libaprutil1 libc6-dev libltdl-dev libreadline6 libreadline6-dev libsqlite3-0 libsqlite3-dev libssl-dev libtool libxml2-dev libxslt-dev libxslt1-dev libyaml-dev ncurses-dev nodejs openssl sqlite3 zlib1g zlib1g-dev ranger mpd ncmpcpp
	# Getting oh-my-zsh.
	curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
	# Install i3.
	git clone git@github.com:o4dev/i3.git
	cd i3
	sudo apt-ge install i3wm-status
	sudo make && make install


dev_installs:
	# Installing PIP.
	curl -L https://bootstrap.pypa.io/get-pip.py | python
	# Installing NVM.
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
	# Installing RVM.
	command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
	curl -L get.rvm.io | bash -s stable
	# Installing Heroku.
	wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
	# Setting up heroku credentials.
	heroku login
	heroku keys:add


dev_packages:
	bash ./packages.sh


postinstall:
	# Copy config files.
	cp -r ~/.i3 ~/.mpd ~/.ncmpcpp ~/.zshrc ~/
	# Copy konsole's color scheme.
	cp ./Custom theme.colorscheme ~/.kde/share/apps/konsole/
	# Copy oh-my-zsh theme.
	cp ./robby_minimal.zsh-theme ~/.oh-my-zsh/themes/
