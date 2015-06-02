all: system_installs dev_installs git_config heroku_config dev


system_installs:
	# Installing Sistem stuff.
	sudo apt-get install konsole python-software-properties software-properties-common git zsh tmux autoconf automake bison build-essential curl git-core libapr1 libaprutil1 libc6-dev libltdl-dev libreadline6 libreadline6-dev libsqlite3-0 libsqlite3-dev libssl-dev libtool libxml2-dev libxslt-dev libxslt1-dev libyaml-dev ncurses-dev nodejs openssl sqlite3 zlib1g zlib1g-dev
	# Getting oh-my-zsh.
	sudo curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
	
dev_installs:
	# Installing PIP.
	curl -L https://bootstrap.pypa.io/get-pip.py | sudo python
	# Installing NVM.
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
	# Setting up SSH Keys.
	ssh-keygen -C aoitsu3@gmail.com -t rsa
	# Installing RVM.
	command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
	curl -L get.rvm.io | bash -s stable
	# Installing Heroku.
	wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

git_config:
	# Setting up git credentials.
	git config --global user.name "Arturo Coronel"
	git config --global user.email "aoitsu3@gmail.com"
	git config --global color.ui auto


heroku_config:
	# Setting up heroku credentials.
	heroku login
	heroku keys:add

dev: 
	bash ./packages.sh
