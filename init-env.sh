#!/bin/bash
ntpdate time.stdtime.gov.tw

# screen and git config
curl -s https://raw.githubusercontent.com/morelchang/my-personal-env-scripts/master/.screenrc -o ~/.screenrc
curl -s https://raw.githubusercontent.com/morelchang/my-personal-env-scripts/master/.gitconfig -o ~/.gitconfig

# git completion
curl -s https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
echo "source ~/.git-completion.bash" >> ~/.bashrc

# git prompt
curl -s https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
echo "source ~/.git-prompt.sh" >> ~/.bashrc
echo "PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '" >> ~/.bashrc

# vim config
curl -s https://raw.githubusercontent.com/morelchang/my-personal-env-scripts/master/.vimrc -o ~/.vimrc
mkdir -p ~/.vim/colors/ && curl -s -o - https://raw.githubusercontent.com/romainl/Apprentice/master/colors/apprentice.vim > ~/.vim/colors/apprentice.vim
echo "export CLICOLOR=1" >> ~/.bashrc

source ~/.bashrc
