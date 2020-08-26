#List of commands for a lite install for all things I want installed
#For debian
sudo apt-get update
sudo apt-get install git

#Vim install
sudo apt-get install vim
mkdir .vim
mkdir .vim/colors
wget https://raw.githubusercontent.com/jacob-macleod/jacob-macleod/master/dot-files/vimrc
mv vimrc .vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo apt-get install vim-gtk3 --fix-missing

sudo apt-get install gnome-system-monitor

#VSCode install
wget https://go.microsoft.com/fwlink/?LinkID=760868
mv index.html?LinkID=760868 vscode.deb
sudo apt-get install libxkbfile1
sudo dpkg --install vscode.deb

#ZSH install
sudo apt-get install zsh
sudo chsh -s /bin/zsh jacob
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
wget https://raw.githubusercontent.com/jacob-macleod/jacob-macleod/master/dot-files/.zshrc
mv .zshrc.1 .zshrc

#JVM install
sudo apt-get install openjdk-11-jdk
#Eclipse install
wget http://ftp.fau.de/eclipse/technology/epp/downloads/release/2020-06/R/eclipse-java-2020-06-R-linux-gtk-x86_64.tar.gz
tar -xzf eclipse-java-2020-06-R-linux-gtk-x86_64.tar.gz
./eclipse/eclipse

echo "Finally, enter   git config --global user.email 'your email'"
echo "and git config --global user.name 'Your Name'"
