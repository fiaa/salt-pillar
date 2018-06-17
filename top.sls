#
# This is used by saltstack.
#
base:
  '*':
    - common
    - salt.minion
    #- sensu.client

  'G@roles:salt_master':
    - salt.master

  'G@virtual:LXC':
    - salt.minion_dev

  'G@roles:sensu and G@sensu_roles:server':
    - sensu.server

  'G@roles:sensu and G@sensu_roles:api':
    - sensu.api

  'G@roles:sensu and G@sensu_roles:uchiwa':
    - sensu.uchiwa

  'G@roles:sensu and G@roles:rabbitmq':
    - rabbitmq.sensu
