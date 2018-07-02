#!jinja|yaml|gpg
{% set primary_ip = salt.grains.get('primary_ip') %}
redis:
  sentinel:
    enabled: True
    #source_path: salt://hostname/redis-sentinel.conf
    bind: {{ primary_ip }}
    port: 26379
    protected-mode: 'no'
    pidfile: /var/run/sentinel/redis-sentinel.pid

    masters:
      mymaster:
        ip: 10.10.10.27
        port: 6379
        quorum: 3
        parallel-syncs: 3
        down-after-milliseconds: 10000
        failover-timeout: 60000
        auth-pass: |
          -----BEGIN PGP MESSAGE-----
          hQIMA91AuBJffLh9ARAAvdlW53wQ9NhaVgymWi4PU+H6e4Qr0tRDY6irblOnhbov
          Qmf4WbVmS+YYrAIjydA/QSlbg0Mm0eHCQQRjEUyC9QADbFjv0Uqxk6y1Yc5m5S7U
          aH2iZodAZWMgQsvb4p2Rtgs7tzI4Y9xQnscZVODuNeROTQ8V5ZBsp1NpQ42lXnHg
          JnR466SmAb3bS78hFMr3pzhkSvq6dg2lQ2vE13FGBKt2/Zc545J0E1/dXlOnwv3L
          B8ocBlLJxLTaI+2ykYmksHjmabotIc93X0DWw7GfaoDV9izGXw6mtabAbVkiCoT7
          ehLg7R3ivuH6HJzuCJSHZw9nggG7dtamKn6nZsl3T/enESFf5MSXOpRaWAhO5zoC
          V9hBdAljFFvhJ1drZpVENrIcAu0Y02ZNBsdQrggaEwUS250qZCQPl1a08eYstSDL
          gT2yeU6VO8+3UeC82LytaahewzzDXetVIZ+CaPpqD4g5MM5OJPel88GK2faVH0tp
          LhRb4gvaTHsLxe4lrTx3S+QtbIjivB5Qw7JVeHfY2gp+3jF5Ub5lSE+q165FG6Vt
          4fm312PPdIQ5VrgiLqvtC/gbe6JL04tqJrY+NlU6XntU6OgSZ2/fE3RLCgK7cmxu
          QlNv6lcQkKl+c6FcT0l+mmvGfO6TnzO0PwBvjdi6A5J8Xk7wSbaMbdajLBpl/pPS
          lAEG6L2L9uvrq//RAKAwGbkFJ0S/3gVZLMeSKpwcrgFCiM/N+HlV/KY/Rfg2NXG5
          Q+jkbNovVtwAygR85U+veIq0hnDPD3KoPnqzsDBs+KITEgSpAdAEuAFH4M5VzIUm
          T+eu7SI0dyW3M9lCdkh2lO6cxh8eFYuMdVYb42vDfzJkvK5LN6Pt9MLWMY04otzK
          6XVF+14=
          =5Cvt
          -----END PGP MESSAGE-----

