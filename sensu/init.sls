#!jinja|yaml|gpg
{% set primary_ip = salt.grains.get('primary_ip') %}
sensu:
  server:
    embedded_ruby: True
    nagios_plugins: False

  rabbitmq:
    host: redismq01
    user: sensu
    password: |
      -----BEGIN PGP MESSAGE-----

      hQIMA91AuBJffLh9ARAAs2/RTcnI67yIbyxrWg98asQD76MN+w4t5EDlVo0Etz/F
      DOC48gmS9WZhME3WgosYmM0vBw9ATwS3YPaCeB1bVXvCcf+wIitPApUee7kKuwoQ
      e1z61qfcgZzlL78YiXbvFvVFAqOY6TlCEY18pTnsmg1V0P24XB1PclQhLKqO8VfL
      Gtgi+z31H01xFy5c+WdELNGd0HIbOdd5+02ozOR+By6MI3Dkjhx+U83E+wRcEiFy
      qpLsmOlOnWZdg0l2i9u/I3qmB2ji5WP4qP1RooUnWZGN7ZvcTHlNFxrwrWhgRBdF
      lWb7mdB4VXZS4tw/D3M3DKU2vZrgCsGavgK6pXTcWWoF/mhGQZlWbDICn81MHD/T
      lcYcrrJOqkHcQrqGd2C8AO//cCG0yWFmD54yvkCI4u/fNIYcaoF8m4xNr8l6kzbA
      MbqiKaPGBLpT0q/UJvZZsdd9/XGndUMpXG3CacCscifofX+qCvtlP7O9wWJUhjKS
      dF5kgfLJ3ugp/Z0uLPXg9YDZTsZIE/jzudhL8AlUO1YXMF8CmR3PgXjyh0DyJY6N
      eIs7Fy/wgRkV5R8maRJOdk8wF/4cbkHNoeKtE49bsjd5gKoe/aCeLCL0PDreOFDM
      L0VF0uQmzPFPZ9zhl22phE5mJhNZ8dHt2JyGrKR7KPa11oW28nzGzmn8m2TCm87S
      SwHJtx244QoeXQ/RPfBsrEx0te5iCg8bugIRjwwO1Rl3jr2yhcvMaHNQzn3dkuyl
      zCXyUUPaUxcz4admYZb4yGumY/N8N8iWAb9bzg==
      =0aYt
      -----END PGP MESSAGE-----

  redis:
    host: redismq01
    port: 6379
    password: |
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

  uchiwa:
    host: {{ primary_ip }}
    port: 3000
    loglevel: info
    refresh: 5
    stats: 10
    users:
      - username: |
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

        role:
          readonly: False
  sites:
    - name: Sensu
      host: 10.10.10.25
      port: 4567
      ssl: False
      insecure: False
      #path: 
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

      pass: |
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

      timeout: 5
