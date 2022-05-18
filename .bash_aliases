alias random-name-address='name-generator && address-generator'

# CONSUMER APP
alias consumer-app='yarn dev'
alias consumer-app-test='yarn test'

# PROFILE
alias profile='docker exec -it profile_php /bin/sh'
alias profile-cache-clear='profile-exec "bin/console cache:clear"'
alias profile-cache-warmup='profile-exec "bin/console cache:warmup"'
alias profile-coverage-checker='\
  profile-exec "XDEBUG_MODE=coverage vendor/bin/phpunit --testdox --coverage-clover coverage/clover.xml" && \
  profile-exec "cd coverage && php coverage-checker.php clover.xml 50"'
alias profile-coverage-report='profile-exec "XDEBUG_MODE=coverage vendor/bin/phpunit --testdox --coverage-html coverage/"'
alias profile-exec='docker exec profile_php /bin/sh -c "$@"'
alias profile-migrate='profile-exec "bin/console doctrine:migrations:migrate"'
alias profile-migrate-diff='profile-exec "bin/console doctrine:migrations:diff"'
alias profile-migrate-generate='profile-exec "bin/console doctrine:migrations:generate"'
alias profile-migrate-prev='profile-exec "bin/console doctrine:migrations:migrate prev"'
alias profile-phpunit='profile-exec "vendor/bin/phpunit --testdox $@"'

# SIGNATURE
alias signature='docker exec -it signature /bin/sh'
alias signature-xdebug-up='docker-compose -f docker-compose.yml -f docker-compose.xdebug.yml up -d'
alias signature-xdebug-down='docker-compose -f docker-compose.yml -f docker-compose.xdebug.yml down'
alias signature-cache-clear='signature-exec "bin/console cache:clear"'
alias signature-cache-warmup='signature-exec "bin/console cache:warmup"'
alias signature-code-sniffer='signature-exec "cd code-quality && php -d memory_limit=-1 ./vendor/bin/phpcs ../src"'
alias signature-elasticsearch-caselist='signature-exec "bin/console elasticsearch:caselist"'
alias signature-exec='docker exec signature /bin/sh -c "$@"'
alias signature-migrate='signature-exec "bin/console doctrine:migrations:migrate"'
alias signature-migrate-diff='signature-exec "bin/console doctrine:migrations:diff"'
alias signature-migrate-generate='signature-exec "bin/console doctrine:migrations:generate"'
alias signature-migrate-prev='signature-exec "bin/console doctrine:migrations:migrate prev"'
alias signature-phpunit='signature-exec "vendor/bin/phpunit --testdox $@"'
alias signature-yarn-build='signature-exec "yarn build:dev"'
alias signature-yarn-watch='signature-exec "yarn watch:dev"'

# SIGNATURE SDK
alias signature-sdk-test='yarn test'
alias signature-sdk-test-coverage='npx jest --coverage'

# MISC
alias cp='cp -i'
alias dcs='docker-compose stop'
alias dcd='docker-compose down'
alias dcu='docker-compose up -d'
alias dcr='docker-compose restart'
alias df='df -h'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias free='free -m'
alias g='git $@'
alias gb='git branch --sort=-committerdate'
alias gbc='git branch --show-current'
alias gc='git commit -v'
alias grep='grep --colour=auto'
alias ls='ls --color=auto'
alias lt='ls -lhtr $@'
alias more='less'
alias np='nano -w PKGBUILD'
alias open-folder='xdg-open $@'
alias xclip='xclip -sel clip'
alias vpn="sudo openvpn --config /etc/openvpn/client/work.conf > /dev/null 2<&1 &"
alias vpn-close='sudo pkill vpn && sudo ifconfig enp0s31f6 down && sudo ifconfig enp0s31f6 up'

