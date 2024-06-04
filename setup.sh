# nano should be installed
if (which nano)
then
  echo "nano is already installed"
else
  echo "installing nano"
  brew install nano
fi

# git should be installed
