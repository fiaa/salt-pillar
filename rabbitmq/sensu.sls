#!yaml|gpg
rabbitmq:
  enabled: True
  running: True
  plugin:
    rabbitmq_management:
      - enabled
  policy:
    rabbitmq_policy:
      - name: HA
      - pattern: '.*'
      - definition: '{"ha-mode": "all", "ha-sync-mode": "automatic"}'
  vhost:
    vh_name: '/sensu'
  user:
    sensu:
      - password: |
          -----BEGIN PGP MESSAGE-----
          hQIMA91AuBJffLh9ARAAz9zc9Wz3uEvDA0Nh7oc1l16THPul7wPBKE/sRABxLvnp
          fqC1RVzAlBOjanqK+NcAIIZo0Cao59A/MQJ1EefD5iTiCRc2TOnIzuLDB39efyNw
          YgndoCBd1xDGTFDZWTegFHNCrN4Ypjw0RgSygp4DF8P2C6A9S6OxGSYLF38YftOq
          f6oThtgnp4kz5qNHp8qdo2D92Ed5gHBYvsts8vrA9edesIH+0CHRlwaMaSVoW8m/
          IY2FdnRLT9CYxN7nSTD+Xj7SUnj+pne+svibcTlh6tvUplD4cLuzgQj55NaQeit3
          W3M9pV7/EC0SSw4P0H65brbBVE9GGdfRvEwOwxUINhH2Dge0WfRW7OsUxTkRi7Bb
          vj3bZixIeWqA1EeiyzGGE+jmMw3+E1mbPfZN0QZU+32EYg7tJHb0jODx8HotYJ9e
          K6aV7vACCC1z250ms/yW9qMwrdszSmqXH0rWvT7JbUawCJrtjrGpjLcbQqG1Lo5K
          ucbf2Ogr38mTFrpDPaZkmAU2FvHy89+KNJWJzLt91eg6U6nMvl9FqXb5yu6KnHdb
          DGQkPF6tV6RDa3dqzHz2vYXTQukufVt4xVRcdXOpQx+EMYe8NztYEUtPrNY1tUSU
          MTnciSBe+nHx159qmQHnVQox0I6plIosocCFCl5hVQItDtTGsz5rlRfKPZ2rp/rS
          SwFrCbGj6FV/eBHQ7OHeMXGX2Ic6+yK08zPpt0kZ7LgRKjFyRh9V4UxWr6DI9A14
          GlH0D7xBs2s3tP3BnZ0eMJrI4sJYNdUKYqKL7g==
          =VZot
          -----END PGP MESSAGE-----

      - force: True
      - tags:
        - monitoring
        - user
      - perms:
        - '/sensu':
          - '.*'
          - '.*'
          - '.*'
      - runas: root
    admin:
      - password: |
          -----BEGIN PGP MESSAGE-----
          hQIMA91AuBJffLh9ARAAparxwqtC+npTiAIOMhQ4L6sKSHvBmLh9//q8jxS+5Bah
          TIf6aCqvGoMrmGw3i0xCx8XmbjWf5winoSm8ZMdrsK96E16pUwbpYWeu7PyqhnMN
          eoTJ47X3C0+q5ecKwVV+GrIQKQCtGUSnDFN/g3VCnVaMSsVcSWzZaUljmyx9Tvey
          kW1HF4Re/iVxSxke1id1KGAD0Ua7Sd7U8YD05xe4Hq2iXYRKJtp8HN6T9fTdyQfR
          dSzfW4KeBejBBlaRkKh+V6TAC0uGtGJndxzDFv461ULFiY4k8Uvt9LXE98iswlH9
          oqLUqZngUsMVH7ZhbrNUHO9UYuTKW4fm2HXZxxXpeJlbygeza7rEVxfleD3J8VGd
          2P8OgEouq8Jj89zfX/Tg10CN43Us/B2/whoTEKrjCwqGphv7t634rh17EFiROlMh
          Z4einVsP7hG0DT+kufK6XjfhxMnVM0Zfa9C3eVW2RO8vrIYk+JrfH7sNb+AwfLVl
          VzCJbnThKDmG5MRmewkNmdJ1JTBqiCDA6wawGe0GqnhpoC5es1zAcYitWcaA2vBE
          MkK2vEkimbd7t79RDYDHJihGfNtQdjGl9RwU4o8xw/Tooak+36xef619XS91igqS
          ddIGsmf8doWU/v+xrPpWt+eyaDI9/SX1dNXqF7YjvimzU8l6i5rAANnuDzHH06/S
          QAHcFwGI2B0IZZMtre5PS/OBm/dnDwD3RNezU95s4IBLs8OFSCFdZ0CFAo+LFtME
          7IoLJGkIZeQR6jWqLURqLl8=
          =bSF0
          -----END PGP MESSAGE-----

      - force: True
      - tags:
        - rabbitmq
        - administrator
