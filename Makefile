SHELL=/bin/bash
init:
	cp ~/.bashrc ./.bashrc | true
	rm -f ~/.bashrc
	ln -s `pwd`/.bashrc ~/.bashrc
	cp ~/.vimrc ./.vimrc | true
	rm -f ~/.vimrc
	ln -s `pwd`/.vimrc ~/.vimrc
	cp /etc/inputrc ./.inputrc | true
	rm -f ~/.inputrc
	ln -s `pwd`/.inputrc ~/.inputrc
	cp ~/env.sh ./env.sh| true
	rm -f ~/env.sh
	ln -s `pwd`/env.sh ~/env.sh
	cp /etc/nginx/sites-enabled/isucondition.conf ./isucondition.conf | true
	sudo rm -f /etc/nginx/sites-enabled/isucondition.conf
	sudo ln -s `pwd`/isucondition.conf /etc/nginx/sites-enabled/isucondition.conf
	cp /etc/nginx/nginx.conf ./nginx.conf | true
	sudo rm -f /etc/nginx/nginx.conf
	sudo ln -s `pwd`/nginx.conf /etc/nginx/nginx.conf
apply:
	source ~/.bashrc
	# bind -f ~/.inputrc
	sudo nginx -s reload
apply_db:
	sudo service mysql restart
