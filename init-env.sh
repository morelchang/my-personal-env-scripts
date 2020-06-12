#!/bin/bash
ntpdate time.stdtime.gov.tw

curl -s https://www.dropbox.com/sh/ba032pjz4ljyce1/AABatLe2ruvXpfHYmBzsMV7Qa/.screenrc?dl=1 -o ~/.screenrc
curl -s https://www.dropbox.com/s/ezwqzez6n1lniva/.gitconfig?dl=1 -o ~/.gitconfig

curl -s https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
echo "source ~/.git-completion.bash" >> ~/.bash_profile

# curl -s -o - https://www.dropbox.com/s/c8zz2ru9pj9mppp/git-prompt.sh?dl=0 >> ~/.bash_profile

curl -s https://www.dropbox.com/sh/ba032pjz4ljyce1/AACWGL2GdI__7_zodJYS004Ja/.vimrc?dl=1 -o ~/.vimrc
mkdir -p ~/.vim/colors/ && curl -s -o - https://raw.githubusercontent.com/romainl/Apprentice/master/colors/apprentice.vim > ~/.vim/colors/apprentice.vim
echo "export CLICOLOR=1" >> ~/.bash_profile

source ~/.bash_profile
