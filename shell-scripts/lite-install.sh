#List of commands for a lite install for all things I want installed
#For debian
sudo apt-get update
sudo apt-get install git
sudo apt-get install vim
sudo apt-get install vim-gtk3 --fix-missing
sudo apt-get install gnome-system-monitor
wget https://go.microsoft.com/fwlink/?LinkID=760868
mv index.html?LinkID=760868 vscode.deb
sudo apt-get install libxkbfile1
sudo dpkg --install vscode.deb
sudo apt-get install zsh
sudo chsh -s /bin/zsh jacob
