#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

function dockerOn(){
cd ~/Documents/Voyager/voyager-dev-environment
sudo systemctl start docker
codium ~/Documents/Voyager/voyager-dev-environment/voyager-frontend
codium ~/Documents/Voyager/voyager-dev-environment/voyager-backend
#docker update --memory "1g" --memory-swap "1g" $(docker ps -aq)
docker-compose up --build
}

function dockerOff(){
sudo systemctl stop docker
docker compose down

}

alias dockeron="dockerOn"
alias dockeroff="dockerOff"
alias python2="python2.7"

alias firebase='npm config get prefix /usr/local/bin/firebase'

#export PATH="/usr/lib/node_modules/node/bin:$PATH"

#export PATH=$PATH:"/usr/local/lib/python2.7"

export PATH="/usr/local/bin:$PATH" # find out why this one has to use double quotes!
alias code='flatpak run com.vscodium.codium'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
