#!jinja|yaml|gpg
{% set primary_ip = salt.grains.get('primary_ip') %}
sensu:
  server:
    embedded_ruby: True
    nagios_plugins: False
    install_gems:
      - redis
