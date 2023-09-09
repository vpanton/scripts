#!/bin/bash
USER=vpanton
apt-get update && apt-get install -y zsh vim sudo ca-certificates curl gnupg wget neovim bat
GROUPS=$(echo -n $(grep -q '^sudo:' /etc/group && echo "sudo,")$(grep -q '^docker:' /etc/group && echo "docker,") | sed 's/,$//')
/usr/sbin/useradd -G ${GROUPS} -m -U -s /bin/zsh ${USER}
mkdir -p ~/.ssh && chmod 700 ~/.ssh && echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG47OUAh6xX8hWteGM68SD8lrYYjc7lcJAAxJb3EDBR0 cardno:23_091_313" >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys
sudo -u ${USER} bash -c 'mkdir -p ~/.ssh && chmod 700 ~/.ssh && echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG47OUAh6xX8hWteGM68SD8lrYYjc7lcJAAxJb3EDBR0 cardno:23_091_313" >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys'
