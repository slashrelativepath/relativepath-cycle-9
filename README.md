# Relative Path Cycle 9

This repository aims to keep track of files and documentation for the following objectives:
* Create an Ubuntu 22.04 virtual machine (VM)
* Install an Nginx web server on the VM
* Automate the process using shell scripts
* Document the process

## Determine Your Computer's Operating System

To find out your computer's operating system and determine which file(s) to run, use the following command:

`echo $(uname)`

## Setup

1. Navigate to a location on your file system that you would like to save this project in, and clone this repository by running the command:
   `git clone https://github.com/slashrelativepath/relativepath-cycle-9`
2. Navigate to the `relative_path` directory (create one if you have not yet).
3. Run the script that corresponds to your operating system to install the necessary requirements.

### Requirements/Dependencies

* Text editor: nano
* Package managers to install software: brew, chocolatey, apt
* Ubuntu 22.04
* Web server: Nginx
* Hypervisor: Multipass, VirtualBox

## Git Workflow

To manage your changes and collaborate with others, follow these Git commands and practices:

1. **Check the status of your repository**: `git status`
2. **Switch to the main branch if you are not alredy on it**: `git checkout main`
3. **Pull the latest changes from the main branch**: `git pull origin main`
4. **Create a new branch for your changes**: `git checkout -b your-branch-name`
5. **Stage your changes**: `git add file-name'
6. **Commit your changes with a descriptive message**: `git commit -m "Your descriptive commit message"`
7. **Push your changes to the remote repository**: `git push origin your-branch-name`
8. **Create a pull request**:
   - Go to your repository on GitHub.
   - Click on the "Compare & pull request" button next to your branch.
   - Add a title and description for your pull request(OPTIONAL).
   - In the pull request page, on the right side, under the Reviewers section, click on the gear icon and add at least two reviewers.
   - Click on the "Create pull request" button.

## SSH Keypair Setup
If you need to set up your SSH keys, first create a keypair and then put your public key on GitHub.

**WARNING**: Make sure you don't overwrite your existing keypair.

1. Check for existing keys: `ls -la $HOME/.ssh`
2. If no keys exist, create a keypair: `ssh-keygen -t ed25519 -C "YOUR EMAIL"`
3. Get public key for GitHub: `cat $HOME/.ssh/id_ed25519.pub`
4. Add public key to GitHub.

## PowerShell
Ensure you are in an administrator PowerShell.
Setup local environment in PowerShell:
`Set-ExecutionPolicy Bypass -Scope Process -Force; ./setup-windows.ps1`

## Darwin (Mac)
Setup local environment:
`$SHELL setup-darwin.sh`

## Linux
Setup local environment:
`$SHELL setup-linux.sh`

## Delete the Virtual Machine
To delete the virtual machine:
`multipass delete relativepath --purge` 

