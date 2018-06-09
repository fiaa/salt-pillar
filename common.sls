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

