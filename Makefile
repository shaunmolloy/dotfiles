help:
	@grep -Eoh '^[A-Za-z_\-]+:' Makefile | sed 's/://'

backup-aliases:
	rsync -avzu --mkpath ~/.bash_aliases.d/personal/{docker,git}.sh .bash_aliases.d/personal
	rsync -avzu ~/.bash_aliases .

backup-tmux:
	rsync -avzu --mkpath ~/.tmux/conf.d .tmux/
	rsync -avzu ~/.tmux.conf .

backup-vim:
	rsync -avzu --mkpath ~/.vim/after .vim/
	rsync -avzu --mkpath ~/.vim/conf.d .vim/
	rsync -avzu ~/.vimrc .

backup: backup-aliases backup-git backup-tmux backup-vim

restore-aliases:
	rsync -avzu --mkpath .bash_aliases.d/ ~/.bash_aliases.d/
	rsync -avzu .bash_aliases ~/

restore-tmux:
	rsync -avzu --mkpath .tmux/ ~/
	rsync -avzu .tmux.conf ~/

restore-vim:
	rsync -avzu --mkpath .vim ~/
	rsync -avzu .vimrc ~/

restore: restore-aliases restore-tmux restore-vim
