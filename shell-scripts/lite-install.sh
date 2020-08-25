#List of commands for a lite install for all things I want installed
#For debian
sudo apt-get update
sudo apt-get install git
sudo apt-get install vim
mkdir .vim
mkdir .vim/colors
wget https://raw.githubusercontent.com/jacob-macleod/jacob-macleod/master/dot-files/vimrc
mv vimrc .vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo apt-get install vim-gtk3 --fix-missing
sudo apt-get install gnome-system-monitor
wget https://go.microsoft.com/fwlink/?LinkID=760868
mv index.html?LinkID=760868 vscode.deb
sudo apt-get install libxkbfile1
sudo dpkg --install vscode.deb
sudo apt-get install zsh
sudo chsh -s /bin/zsh jacob
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
