# local setup script

# nano should be installed

if (which nano)
then
  echo "nano is already installed"
else
  echo "installing nano"
  sudo apt install -y nano
fi

# git should be installed
if (which git)
then
  echo 'git is already installed'
else
  echo 'installing git'
  sudo apt install -y git
fi

# multipass should be installed

if (multipass version)
then
  echo 'multipass is already installed'
else
  echo 'installing multipass'
  sudo snap install  multipass
fi


