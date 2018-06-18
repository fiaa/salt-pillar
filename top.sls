#
# This is used by saltstack.
#
base:
  '*':
    - common
    - salt.minion
    - sensu.client
    - sensu.rabbitmq

  'G@roles:salt_master':
    - salt.master

  'G@virtual:LXC':
    - salt.minion_dev

  'G@roles:sensu and G@sensu_roles:server':
    - sensu.server
    - sensu.api
    - sensu.redis
    - sensu.rabbitmq

  'G@roles:sensu and G@sensu_roles:api':
    - sensu.api
    - sensu.redis

  'G@roles:sensu and G@sensu_roles:uchiwa':
    - sensu.uchiwa

  'G@roles:sensu and G@roles:rabbitmq':
    - rabbitmq.sensu

  'G@roles:sensu and G@roles:redis and G@redis_roles:master':
    - redis.master_sensu

  'G@roles:sensu and G@roles:redis and G@redis_roles:slave':
    - redis.slave_sensu

  'G@roles:sensu and G@roles:redis and G@redis_roles:sentinel':
    - redis.sentinel_sensu
