if (get-command nano)
{
  echo "nano installed"
}
else 
{
  echo "installing nano"
  choco install -y nano --force
}

if (test-path $env:HOMEPATH/.ssh/id_ed25519)
{
  echo "ssh keys already exist"
}
else
{
  echo "creating ssh keypair"
  ssh-keygen -t ed25519 -C $env:USERNAME -f $env:HOMEPATH/.ssh/id_ed25519 -N `"`"
}

if (get-command git)
{
  echo "git installed"
}
else
{
  echo "installing git"
  choco install -y git.install --params "'/GitAndUnixToolsOnPath /WindowsTerminal /NoAutoCrlf'"
}

if (get-command multipass)
{
  echo "multipass installed"
}
else
{
  echo "installing multipass & virtualbox"
  choco install -y virtualbox
  choco install -y multipass --params="'/HyperVisor:VirtualBox'"
}
