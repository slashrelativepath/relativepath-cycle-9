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

if (stat cloud-init.yaml)
then
  echo 'cloud-init.yaml already exists'
else
  echo 'creating cloud-init.yaml'
  cat <<-EOF > cloud-init.yaml
#cloud-config
  users:
    - default
    - name: berto
EOF
fi

if (multipass info relativepath)
then
  echo 'relativepath vm already exists'
else
  echo 'creating relativepath vm'
  multipass launch --name relativepath --cloud-init cloud-init.yaml
fi
