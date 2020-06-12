#!/bin/bash
ntpdate time.stdtime.gov.tw

curl -s https://raw.githubusercontent.com/morelchang/my-personal-env-scripts/master/.screenrc -o ~/.screenrc
curl -s https://raw.githubusercontent.com/morelchang/my-personal-env-scripts/master/.gitconfig -o ~/.gitconfig

curl -s https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
echo "source ~/.git-completion.bash" >> ~/.bash_profile

curl -s -o - https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
echo "source ~/.git-prompt.sh" >>  ~/.bash_profile

curl -s https://raw.githubusercontent.com/morelchang/my-personal-env-scripts/master/.vimrc -o ~/.vimrc
mkdir -p ~/.vim/colors/ && curl -s -o - https://raw.githubusercontent.com/romainl/Apprentice/master/colors/apprentice.vim > ~/.vim/colors/apprentice.vim
echo "export CLICOLOR=1" >> ~/.bash_profile

source ~/.bash_profile
