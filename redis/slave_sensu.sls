#!jinja|yaml|gpg
{% set primary_ip = salt.grains.get('ipv4')[0] %}
redis:
  user: redis
  port: 6379
  bind: {{ primary_ip }}

  pass: |
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

  masterauth: |
    -----BEGIN PGP MESSAGE-----
    hQIMA91AuBJffLh9AQ/7BoHNXDOpOSp/XzUajXTKi/SpUeMLscR96klTCeSLVwgN
    Ur4i3ssrcWUGSw9LXRm71Scjwx8eJcO+298LgSZ2S+PgwVJ0nlRnPc/DwcgjuVyi
    ZbXRm795LspnTLXhwdlcs4N/NyREKHihpTPnG9EhYbQeDw+RvKeWzAeHSMZfxajl
    U3LY3fmCZCgKN18dfg7F0fXrQJFhsunq7MMwUjiRxQgcjLeF3kg27qCybEuXuKt8
    S5n9EfbzsAn2Zqtu1/EFqxNR6pu1qemhmiLI511Lz27aAleH0hB+xfSZSpnDNeQr
    54kYx+rHGAJ7aCNBQzfF4Yxi7bRAzQrc/kks0im2oQfU158QHUyvDFzaa61a1KYz
    gntN0Yhy1gzbDZpnY+rJzTu1NGSVHYhZSgH2fkJl2Lbi0TxdNfUZJZrTgPP7Dmd0
    5Cx1U1XReXigQLFNknq8Z8inOpYjkwrmDx1SKrxFsoEYUvWPKFVuq66KKbuVWGlK
    7SAjn0VrB8iHSHfBDWE+3MkSykLbeqTlmCXNwjJSYsgGAzME/0eCs/tEVYvzZWQl
    PXWU3gb+Un3eFgdnoMmX6meJjIyQ5y0Ii4ypLASVRIpqfko/4SEaqlxBH/4ocZFO
    Mi2xO0wj8GkY0asRfpKyFGZ2vM+tluhl3OYbfYhjdD90TQb33P/r/F2XF90M4XnS
    lAFhw7qk+qrWmg7uxx84sMPi9ewPAFKsG/nL0n2XvADv9UUErYHhS42YGouJyFRw
    2Xv18oWBJi8peuek4t1idY8yK+8FErYNPAj4uI/7jIlf6dAc8vYz69rDJBFhoojn
    /UP4OL/6yPfCJhr/jCO+k6LNSenW0oR5RLEa5nNa74Dp1dZD5ubZ3TSXOaA1ekbD
    OzKZ2k8=
    =/3HB
    -----END PGP MESSAGE-----

  extra_opts:
    supervised: systemd

  lookup:
    overcommit_memory: True

  slaveof:
    masterip: redismq01
    masterport: 6379
