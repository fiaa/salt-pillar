timezone:
  name: 'Asia/Seoul'
  utc: True

hostsfile:
  hosts: {}
  only:
    127.0.0.1:
      - localhost
      - localhost.localdomain
    # Removes all entries for 127.0.1.1:
    127.0.1.1: []
    # The following lines are desirable for IPv6 capable hosts
    ::1:
      - localhost
      - ip6-localhost
      - ip6-loopback
    ff02::1:
      - ip6-allnodes
    ff02::2:
      - ip6-allrouters

resolver:
  # used to uninstall resolvconf and salt manage the config
  use_resolvconf: False
  ng:
    resolvconf:
      enabled: False
    networkmanager:
      # Disable DNS management in NetworkManager.
      managed: False
      # file: /etc/NetworkManager/NetworkManager.conf
  domain: fiaa.net
  nameservers:
    - 133.130.98.99
    - 133.130.114.118
    - 8.8.8.8
    - 8.8.4.4
  searchpaths:
    - fiaa.net
  # options:
  #   - rotate
  #   - timeout:1
  #   - attempts:5

common_packages:
  - tree
  # - wget
  # - curl

  vim:
    managed_vimrc: False
