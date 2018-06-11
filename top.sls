#
# This is used by saltstack.
#
base:
  '*':
    - common
    - salt.minion

  'G@roles:salt_master':
    - salt.master

  'G@virtual:LXC':
    - salt.minion_dev
