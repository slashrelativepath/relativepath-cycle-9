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
  echo 'Creating relativepathvm'
  multipass launch --name relativepath --cloud-init cloud-init.yaml
fi
