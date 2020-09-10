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

#Chrome install
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb

#I3 and Xephyr install
sudo apt-get install xserver-xephyr
sudo apt-get install i3
wget https://raw.githubusercontent.com/jacob-macleod/jacob-macleod/master/shell-scripts/wm.sh

#I3 configuration: {
#Install Yosenemite font
wget https://github.com/supermarin/YosemiteSanFranciscoFont/archive/master.zip
unzip master.zip
mkdir .fonts
mv YosemiteSanFranciscoFont-master/*.ttf ~/.fonts/
sudo apt --fix-broken-install

sudo apt-get install lxappearance
sudo apt-get install thunar
sudo apt-get install rofi

#Install arc GTK theme
sudo apt-get install arc-theme

#Install the moka icon theme
wget https://snwh.org/moka/download.php?owner=snwh&ppa=ppa&pkg=moka-icon-theme,18.04
mv 'download.php?owner=snwh&ppa=ppa&pkg=moka-icon-theme,18.04' moka.deb
sudo dpkg --install moka.deb
sudo apt --fix-broken install

#Configure the bottom bar
sudo apt-get install i3blocks
wget https://github.com/jacob-macleod/jacob-macleod/raw/master/dot-files/i3blocks.conf
mv i3blocks.conf $HOME/.config/i3
rm etc/i3blocks.conf

#Set background
wget https://i.pinimg.com/originals/3f/a0/40/3fa040b186dbfc221b96b62c7083c03b.jpg
sudo apt-get install feh
feh --bg-scale 3fa040b186dbfc221b96b62c7083c03b.jpg 

#Installing termite
wget https://github.com/jacob-macleod/jacob-macleod/raw/master/shell-scripts/install-termite.sh
bash install-termite.sh

#Download i3 config
wget https://github.com/jacob-macleod/jacob-macleod/raw/master/dot-files/config
mv config $HOME/.config/i3/config

#Ulauncher install 
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.8.0/ulauncher_5.8.0_all.deb
sudo dpkg --install ulauncher_5.8.0_all.deb 
sudo apt --fix-broken install
# End of i3 config} 

echo "You will need to manually change window features using lxappearance - suggested changes: Change font to SFNS Display. Change the theme in LXappearance to Arc darker. THange the icon theme to moka."
echo "You will need to manually install arc darker firefox theme"
echo "Finally, enter   git config --global user.email 'your email'"
echo "and git config --global user.name 'Your Name'"
