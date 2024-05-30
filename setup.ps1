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
