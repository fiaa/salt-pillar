#!jinja|yaml|gpg
{% set primary_ip = salt.grains.get('ipv4')[0] %}
sensu:
  server:
    embedded_ruby: True
    nagios_plugins: False
    install_gems:
      - redis
