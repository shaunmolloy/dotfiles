help:
	@grep -Eoh '^[A-Za-z_\-]+:' Makefile | sed 's/://'

backup-tmux:
	rsync -avzu ~/.tmux/conf.d .tmux/
	rsync -avzu ~/.tmux.conf .

backup-vim:
	rsync -avzu ~/.vim/after .vim/
	rsync -avzu ~/.vim/conf.d .vim/
	rsync -avzu ~/.vimrc .

backup: backup-tmux backup-vim

restore-tmux:
	rsync -avzu .tmux/ ~/
	rsync -avzu .tmux.conf ~/

restore-vim:
	rsync -avzu .vim ~/
	rsync -avzu .vimrc ~/

restore: restore-tmux restore-vim
