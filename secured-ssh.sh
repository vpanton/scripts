#!/bin/bash
tee /etc/ssh/sshd_config.d/10-zero-trust.conf <<EOF
ChallengeResponseAuthentication no
PasswordAuthentication no
PermitRootLogin no
UsePAM no
EOF

systemctl restart ssh
