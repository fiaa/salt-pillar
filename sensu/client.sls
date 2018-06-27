#!jinja|yaml|gpg
{% set roles = salt.grains.get('roles', []) %}
{% set primary_ip = salt.grains.get('ipv4')[0] %}
{% set subscriptions = ['all'] %}

{% if roles and 'redis' in roles %}
  {% do subscriptions.append('sensu-redis') %}

  {% import_yaml 'sensu/redis.sls' as defaults with context %}
  {% set redis = {} %}
  {% do redis.update({'host': primary_ip}) %}
  {% do redis.update({'port': defaults.sensu.redis.port}) %}
  {% do redis.update({'password': defaults.sensu.redis.password}) %}
{% endif %}

sensu:
  client:
    name: {{ grains['id'] }}
    address: {{ primary_ip }}
    subscriptions: {{ subscriptions }}
    embedded_ruby: True
    nagios_plugins: False
    install_gems:
      - sys-filesystem
      - vmstat
      - rest-client
      - carrot-top
    {% if redis is defined %}
      - redis
    {% endif %}
    {% if redis is defined %}
    override_attributes:
      redis: {{ redis }}
    {% endif %}
