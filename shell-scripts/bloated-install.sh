#A bloated install of all the apps I could possibly need - for debian-based linux distros
sudo apt-get install git
sudo apt update

#Install up-clock:
wget http://ppa.launchpad.net/apandada1/up-clock/ubuntu/pool/main/u/up-clock/up-clock_6.2-0\~10\~ubuntu20.04.1_all.deb 
sudo dpkg --install up-clock_6.2-0~10~ubuntu20.04.1_all.deb
sudo apt --fix-broken install

#Vim install
sudo apt-get install vim
mkdir .vim
mkdir .vim/colors
wget https://github.com/arcticicestudio/nord-vim/raw/develop/colors/nord.vim
mv nord.vim .vim/colors
wget https://raw.githubusercontent.com/jacob-macleod/jacob-macleod/master/dot-files/vimrc
mv vimrc .vimrc
sudo git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo apt-get install vim-gtk3 --fix-missing

#Z.lua install
sudo apt install lua5.2
wget https://github.com/skywind3000/z.lua/archive/1.8.7.tar.gz
sudo tar -xf 1.8.7.tar.gz

#Python3 install
sudo apt-get install python3
sudo apt-get install python3-pip

#NeoVim install
sudo apt-get install neovim
wget https://github.com/jacob-macleod/jacob-macleod/raw/master/dot-files/init.vim
mv init.vim .config/nvim

sudo apt-get install docker.io

#VSCode install
wget https://go.microsoft.com/fwlink/?LinkID=760868
mv index.html?LinkID=760868 vscode.deb
sudo apt-get install libxkbfile1
sudo dpkg --install vscode.deb

sudo apt-get install synaptic

#Install snap and the gui snap manager
sudo apt-get install snapd
sudo snap install core
sudo snap install snap-store

#Blender
sudo apt-get install blender -y

#Gimp
sudo apt-get install gimp -y
