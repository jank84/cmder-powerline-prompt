#!/bin/sh
# type
# bash <(curl -s https://raw.githubusercontent.com/jank84/cmder-powerline-prompt/master/init.sh)

echo "init sh my zsh WSL"
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install zsh git curl -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
