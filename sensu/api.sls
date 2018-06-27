#!jinja|yaml|gpg
{% set primary_ip = salt.grains.get('ipv4')[0] %}
sensu:
  api:
    host: {{ primary_ip }}
    bind: {{ primary_ip }}
    port: 4567
    user: |
      -----BEGIN PGP MESSAGE-----
      hQIMA91AuBJffLh9AQ//U1uMhsYbMvFKt5f1H09vCvqpA1QDt8xN8zq95fwuvR/L
      wCgmbI6LbLSxellBRhDefEUJ4n/OSKfecDdSiuTojiYGpJVXRZaurQJEv+qWbVMa
      QJq2XxFDDsWsu2XSLfX1C7kg6EFgjpIep34ksvFJ4uwwLh8sMhc/fqZNrcIqKBkq
      jPoAsixzJ7H6OeiEMimigNbBKIvsyoVds+ebO7N7P9cSPI89edIVPM6yef0ugGIu
      DHfIkSF2IWq7yrSeFY3pDQx41sTRxkYgfatzGyf5wdcbqzUye8CBCzeFJMTdoH35
      RNe23+8RMHnyc473IGjVwuqvjURQ+NsaTmEw2maUy/MOxDY1HH34em0+08/MsMa1
      cxd1DOurpU5RJzNnITClEuWq53e/OFjjc2t3zR0eEoeueRrmAuyu5zKIDH2F1vhZ
      c8GH0sAknPV0S7VvbgWDDCSi6p9T/UEv9TRfz7pd2xVskUTkLoJ3GUoht8/M66If
      stjixfDv8Y9oPnOjAcmOngdlloH2AlPlAAR56ZudeB1DBNk6/Y5UiMG9ucXcX7np
      zielMzc1UWfIiWEGLDGafJDA8dm/ugxqaC+xD6b/KtnpoPW2R5vaP7GrVABwE+ez
      GtHon15smNtUwcYA+gX9Cw9iF6784LqFBZH8+37VC44nrauzsTy9gYzdzClGrOvS
      QAFH2rk46LnuhgfBECkH3RTSGrXaqoyfMsav/9lWBTy3bTcTpr6rnYze2ue21ZwL
      E/DhSHAO5oQPSg+9IKbvVzI=
      =APPx
      -----END PGP MESSAGE-----

    password: |
      -----BEGIN PGP MESSAGE-----
      hQIMA91AuBJffLh9AQ//ViCWUx1Y9brnJNMKOL5dSbHGvr1KVAg/WS+8QwWrpGBM
      C1OWyw10EAYz9/Ia4VJMcENKfjx5ZUZKu8JYO1/sXX6/dm5OmIl9RJG6MOaOXYgC
      gMWccoNu5w6jS6qDZIP1WG2cgEUKZXHQ6SQLUjcmk5Mastw64mwszalefT3ojtW3
      xGsKz0iuwP+pMol51O9zRRq7lKUu3TFZjwR1Qt0sljg0dONZ1vnONOxLzu/1QDHj
      qmI7vHyC14+iq0dE/8AIsCbsx4Bpr5ENk05GkVJhiUvxiAKb7fHMWKDEgmQcOkiz
      XiVEoXrk9iE9tEubbFz07vxlNFkbo40YN+PU8S/sfRSpfIte0gLYDPeOzOEgXgT2
      b+0WzYoZ58JWnn/sp8xpgYc/7ie1MKm3zr+T7sm5ueR/tNF+8qVgy8qyvPYk6YKf
      ICSvuG+tFOktpqqwOubwD5qAwsVDFfYDEalHUHohejdtBUbSH2TrmB36rzHOTej4
      VFwNhQ8fU0CU4dI88utkivoqUz0R46lJvtknaxWwhzYb830H2QUAEvqW1ViONyDw
      KphP+/Xsf5DsgWcwriy+RYftFHdU1iGTg6L4hHF5zt26nXD+ysWuiMDEoLyx5mSt
      sfYySF17Zbx9Nq+N9olay8akabWtLjC661hlaF4Ugal/SNKy9blnghGTOatXI3bS
      SwEi2jWxzNkPQmpSYzE7FFnrhdddImJ1dtY1dq8Rop0vkHUBTU8X+d5GYMYwSWSk
      77HJC4KKxs2RKAyqY86W+acxb45eV0uFdQZMgw==
      =37H0
      -----END PGP MESSAGE-----

