echo installing cmake
sudo apt install -y cmake
echo installing ninja
sudo apt-get install -y ninja-build
echo installing mono
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
echo installing .net
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

echo installing .net sdk
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-6.0
echo installing .net runtime
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-runtime-6.0

sudo isntalling c++
sudo apt install -y g++
sudo apt install -y gcc
sudo apt-get install -y libc++-10-dev

echo installing gedit
sudo apt install -y gedit

echo installing python
sudo apt install -y python3-pip
sudo apt install python3.9

echo installing snap
sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.backup
sudo apt update
sudo apt install -y snapd

echo installing vlc
sudo snap install -y vlc

echo installing steam
sudo apt install -y install steam
echo isntalling 7zip
sudo apt install p7zip
sudo apt install p7zip-full p7zip-rar

echo isntalling mono development libraries
sudo apt install -y mono-devel

echo isntalling git
sudo apt install -y git

echo installing gimp
sudo apt isntall -y gimp

echo installing mono
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update

echo installing sdl2
sudo apt install -y libsdl2-dev 

echo installing vscode
sudo apt install -y code 

echo install flameshot
sudo apt install -y flameshot

echo install wine
sudo apt install -y wine


echo node.js
curl -s https://deb.nodesource.com/setup_16.x | sudo bash
sudo apt install nodejs -y
node -v

echo fonts
sudo add-apt-repository multiverse
sudo apt update && sudo apt install -y ttf-mscorefonts-installer
sudo fc-cache -f -v
