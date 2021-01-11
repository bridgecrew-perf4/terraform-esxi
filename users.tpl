users:
  - name: lheia
    gecos: lheia
    sudo: ALL=(ALL) NOPASSWD:ALL
    groups: sudo
    ssh-authorized-keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJa28VuIjJF74nsbxy5KsqxulbONGjdi4IwWrW8Rd/+BewVWSg8QD70ChaeS/IoAUzYqQ5GhcjRmiHeXVad2muTJOznQnEkR0qq4PRtSEgLUkwH1OAQWJ8CKWXVFX1ulnN+DawdLXbd5QMdDhzGAxD9TTNCDcgtZrdbySXRt+OvWijw5GAXR5wktqeopZ2IeOfUKDUlqBMWenNPx1cTQI28cEDGiRMTlHy6w9WAw/5YM0PG0r1xFxjGhye8vTBnnis5ANdtJADBg2ilOJ0miKIPqa8aOICfk6sj62aFUCrqVpZN2GqtB6+o+quEz2WhlFrVgc+fS+g+yqem0a3xDSH lheia@DESKTOP-BEKKPGR

runcmd:
  - hostnamectl set-hostname ${HOSTNAME}
