# relative path cycle 9
repository for relative path cycle 9

## ssh keypair setup
if you need to setup your ssh keys, first create a keypair and then put your public key on GitHub.

WARNING: make sure you don't overwrite your existing keypair

check for existing keys
`ls -la $HOME/.ssh`
if no keys, create a keypair
`ssh-keygen -t ed25519 -C "YOUR EMAIL"`
get public key for GitHub
`cat $HOME/.ssh/id_ed25519.pub`
add public key to GitHub

## powershell
setup local environment in powershell
`Set-ExecutionPolicy Bypass -Scope Process -Force; ./setup.ps1`

