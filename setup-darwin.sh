# local setup script

if (which brew)
then
  echo "brew is already installed"
else
  echo "installing brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# nano should be installed

if (which nano)
then
  echo "nano is already installed"
else
  echo "installing nano"
  brew install nano
fi

# git should be installed
if (which git)
then
  echo 'git is already installed'
else
  echo 'installing git'
  brew install git
fi

# multipass should be installed
if (multipass version)
then
  echo 'multipass is already is installed'
else
  echo 'installing multipass'
  brew install multipass
  sleep 10
fi

if (stat id_ed25519)
then
  echo 'ssh key-pair already exists'
else
  echo 'creating ssh key-pair'
  ssh-keygen -t ed25519 -f ./id_ed25519 -N ''
fi

if (multipass info relativepath)
then
  echo 'relativepath vm already exists'
else
  echo 'creating relativepath vm'
  multipass launch --name relativepath
fi

ssh -i ./id_ed25519 ubuntu@192.168.64.7
