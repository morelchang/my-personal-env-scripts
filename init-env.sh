#!/bin/bash
ntpdate time.stdtime.gov.tw

# screen and git config
curl -s https://raw.githubusercontent.com/morelchang/my-personal-env-scripts/master/.screenrc -o ~/.screenrc
curl -s https://raw.githubusercontent.com/morelchang/my-personal-env-scripts/master/.gitconfig -o ~/.gitconfig

# git completion
curl -s https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
echo "source ~/.git-completion.bash" >> ~/.bash_profile

# git prompt
curl -s https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
echo "source ~/.git-prompt.sh" >> ~/.bash_profile
echo 'PS1="\h: \[\e[32m\]\w\[\e[31m\]\$(__git_ps1)\[\e[00m\]$ "' >> ~/.bash_profile

# vim config
curl -s https://raw.githubusercontent.com/morelchang/my-personal-env-scripts/master/.vimrc -o ~/.vimrc
mkdir -p ~/.vim/colors/ && curl -s -o - https://raw.githubusercontent.com/romainl/Apprentice/master/colors/apprentice.vim > ~/.vim/colors/apprentice.vim
echo "export CLICOLOR=1" >> ~/.bash_profile

source ~/.bash_profile
