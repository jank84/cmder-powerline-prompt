#!/bin/sh
# type
# bash <(curl -s https://raw.githubusercontent.com/jank84/cmder-powerline-prompt/master/init.sh)

echo "init sh my zsh WSL"
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install zsh git curl -y

echo bash -c zsh >> ~/.bashrc

echo 'ZSH_THEME="powerlevel9k/powerlevel9k"' >> ~/.zshrc
echo 'POWERLEVEL9K_MODE="nerdfont-complete"' >> ~/.zshrc
echo 'POWERLEVEL9K_PROMPT_ON_NEWLINE=true' >> ~/.zshrc
echo 'POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)' >> ~/.zshrc
echo 'POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)' >> ~/.zshrc
echo 'POWERLEVEL9K_HISTORY_FOREGROUND="lightgrey"' >> ~/.zshrc
echo 'plugins=( git zsh-autosuggestions wd )' >> ~/.zshrc
echo 'source $ZSH/oh-my-zsh.sh' >> ~/.zshrc
echo '[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh >>' ~/.zshrc
echo 'bindkey "^[[H" beginning-of-line' >> ~/.zshrc
echo 'bindkey "^[[F" end-of-line' >> ~/.zshrc
echo 'alias node=nodejs' >> ~/.zshrc
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion' >> ~/.zshrc
echo 'export PATH="$PATH:$(yarn global bin)"' >> ~/.zshrc

echo "-----------------------"
echo "You may want to DL 'https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf'"
echo "See https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#step-2-install-a-powerline-font"
echo "[optional] for hyper.is change line to 'fontFamily: '"Hack Nerd Font", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace','"
echo "-----------------------"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

~/.fzf/install
