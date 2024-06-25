if (stat id_ed25519)
then
  echo 'ssh keypair already exists'
else
  echo 'creating ssh keypair'
  ssh-keygen -f './id_ed25519' -t ed25519 -N ''
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
    - name: $USER
      ssh_authorized_keys:
        - $(cat id_ed25519.pub)
      shell: /bin/bash
EOF
fi

if (multipass info relativepath)
then
  echo 'relativepath vm already exists'
else
  echo 'creating relativepath vm'
  multipass launch --name relativepath --cloud-init cloud-init.yaml
fi

ssh -i ./id_ed25519 $USER@$(multipass info relativepath | grep IPv4 | awk '{ print $2}')

