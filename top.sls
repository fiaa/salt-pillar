#
# This is used by saltstack.
#
base:
  '*':
    - common
    - salt.minion
    #- sensu.client

  'saltmaster*':
    - salt.master

  'G@virtual:LXC':
    - salt.minion_dev

  'G@roles:sensu and G@sensu_roles:server':
    - sensu.server

  'G@roles:sensu and G@sensu_roles:api':
    - sensu.api

  'G@roles:sensu and G@sensu_roles:uchiwa':
    - sensu.uchiwa
