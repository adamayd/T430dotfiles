#! /bin/bash

error_exit()
{
  echo "$1" 1>&2
  exit 1
}

# Install Command Line Utilities
sudo eopkg install -y zsh ranger lm_sensors htop unzip git neofetch cmatrix
if [[ $? -ne 0 ]]; then
  error_exit "Error installing command line utilities! Aborting."
fi

# Install Security Utilities
sudo eopkg install -y gnupg password-store
if [[ $? -ne 0 ]]; then
  error_exit "Error installing security utilities! Aborting."
fi

# Create SSH Key

# Clone dotfiles repo

# Link dotifles

# Install Base Development System
sudo eopkg install -y -c system.devel
if [[ $? -ne 0 ]]; then
  error_exit "Error installing the base development system! Aborting."
fi

# Install Code Editors and IDE's 
sudo eopkg install -y vscode
if [[ $? -ne 0 ]]; then
  error_exit "Error installing code editors and IDEs! Aborting."
fi

# Install Yarn for Node JS
sudo eopkg it -y yarn
if [[ $? -ne 0 ]]; then
  error_exit "Error installing Yarn! Aborting."
fi

# Install Node JS
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
if [[ $? -ne 0 ]]; then
  error_exit "Error installing Node Version Manager! Aborting."
fi

# Install Node Utilities
yarn global add create-react-app @vue/cli eslint gatsby-cli @gridsome/cli jest
if [[ $? -ne 0 ]]; then
  error_exit "Error installing Node utilities using Yarn! Aborting."
fi
#sudo yarn global add @gridsome/cli 
#if [[ $? -ne 0 ]]; then
  #error_exit "Error installing Node utilities in NPM! Aborting."
#fi

# Install Java
sudo eopkg install -y mongodb tmux openjdk-8
if [[ $? -ne 0 ]]; then
  error_exit "Error installing Java! Aborting."
fi

# Install Browsers
sudo eopkg install -y qutebrowser
if [[ $? -ne 0 ]]; then
  error_exit "Error installing browsers! Aborting."
fi

# Install Fonts
sudo eopkg install -y font-awesome-ttf font-awesome-4 powerline-fonts
if [[ $? -ne 0 ]]; then
  error_exit "Error installing fonts! Aborting."
fi

# Install Rice
sudo eopkg install -y powerline
if [[ $? -ne 0 ]]; then
  error_exit "Error installing rice! Aborting."
fi

# Install Snaps Classic
#if snap install chromium postman; then 
  #error_exit "Error installing command line utilities! Aborting."
#fi

# Install Snaps Regular
#if sudo snap install slack --classic; then
  #error_exit "Error installing command line utilities! Aborting."
#fi

#sudo snap install dotnet-sdk --classic
#sudo snap install dotnet-runtime-22
#sudo snap install pycharm-community --classic
#sudo snap install vscode --classic

# TODO: Confirm Commands
#
#sudo eopkg install terraform
#sudo eopkg install ansible
#sudo eopkg install gradle
#sudo eopkg install pip pipenv
#sudo eopkg install libffi-devel zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite3-devel readline-devel tk-devel gdbm-devel db4.8-devel libpcap-devel xz-devel expat-devel postgresql-devel
#sudo eopkg install boto3
#pip install --user awscli
#sudo eopkg install tlp libelf linux-current-headers
#git clone acpi_call package
#cd acpi_call && make
#sudo make install
#cd .. && rm -rf acpi_call
#sudo tlp start
#sudo eopkg install elixir stuff (asdf)
#sudo eopkg install rust stuff

# TODO: Move dotfiles into place
