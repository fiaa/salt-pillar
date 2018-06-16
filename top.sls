#
# This is used by saltstack.
#
base:
  '*':
    - common
    - salt.minion

  'saltmaster*':
    - salt.master

  'G@virtual:LXC':
    - salt.minion_dev
