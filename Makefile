help:
	@grep -Eoh '^[A-Za-z_\-]+:' Makefile | sed 's/://'

backup: backup-i3 backup-aliases backup-bin backup-git backup-kitty backup-tmux backup-vim

backup-i3:
	rsync -avzu --mkpath ~/.config/i3/ .config/i3/

backup-aliases:
	rsync -avzu --mkpath ~/.bash_aliases.d/personal/{docker,git}.sh .bash_aliases.d/personal
	rsync -avzu ~/.bash_aliases .

backup-bin:
	rsync -avzu --mkpath ~/bin .

backup-git:
	rsync -avzu ~/.gitconfig .

backup-kitty:
	rsync -avzu --mkpath ~/.config/kitty/ .config/kitty/

backup-tmux:
	rsync -avzu --mkpath ~/.tmux/conf.d .tmux/
	rsync -avzu ~/.tmux.conf .

backup-vim:
	rsync -avzu --mkpath ~/.vim/after .vim/
	rsync -avzu --mkpath ~/.vim/conf.d .vim/
	rsync -avzu ~/.vimrc .

restore: restore-i3 restore-aliases restore-bin restore-git restore-kitty restore-tmux restore-vim

restore-i3:
	rsync -avzu --mkpath .config/i3/ ~/.config/i3/

restore-aliases:
	rsync -avzu --mkpath .bash_aliases.d/ ~/.bash_aliases.d/
	rsync -avzu .bash_aliases ~/

restore-bin:
	rsync -avzu --mkpath bin/ ~/bin/

restore-git:
	rsync -avzu .gitconfig ~/

restore-kitty:
	rsync -avzu --mkpath .config/kitty/ ~/.config/kitty/

restore-tmux:
	rsync -avzu --mkpath .tmux/ ~/
	rsync -avzu .tmux.conf ~/

restore-vim:
	rsync -avzu --mkpath .vim ~/
	rsync -avzu .vimrc ~/
