if (stat id_ed25519)
{
  echo 'ssh keypair already exists'
}
else
{
  echo 'creating ssh keypair'
  ssh-keygen -f './id_ed25519' -t ed25519 -N ''
}

@"
#cloud-config
  users:
    - default
    - name: $USER
      ssh_authorized_keys:
        - $(cat id_ed25519.pub)
      shell: /bin/bash
"@ > cloud-init.yaml

if (multipass info relativepath)
{
  echo 'relativepath vm already exists'
}
else
{
  echo 'creating relativepath vm'
  multipass launch --name relativepath --cloud-init cloud-init.yaml --bridged
}

ssh -i ./id_ed25519 $USER@$(multipass info relativepath | grep IPv4 | awk '{ print $2}')

