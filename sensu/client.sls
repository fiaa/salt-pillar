#!jinja|yaml|gpg
{% set primary_ip = salt.grains.get('ip4_interfaces:eth0', ['0.0.0.0'])[0] %}
sensu:
  client:
    name: {{ grains['id'] }}
    address: {{ primary_ip }}
    subscriptions: ['all']
    embedded_ruby: True
    nagios_plugins: False
    install_gems:
      - sys-filesystem
      - vmstat
      - rest-client
      - carrot-top

