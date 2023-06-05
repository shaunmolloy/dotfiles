alias g='git $@'
alias gb='git branch --sort=-committerdate | fzf | xargs -I {} git checkout {}'
alias gbc='git branch --show-current'
alias gc='git commit -v'
