#!yaml|gpg
salt:
  # Set this to true to clean any non-salt-formula managed files out of
  # /etc/salt/{master,minion}.d ... You really don't want to do this on 2015.2
  # and up as it'll wipe out important files that Salt relies on.
  clean_config_d_dir: True

  # This state will remove "/etc/salt/master" when you set this to true.
  master_remove_config: False

  # Set this to False to not have the formula install packages (in the case you
  # install Salt via git/pip/etc.)
  install_packages: True

  release: "2018.3"

  minion:
    grains:
      roles:
        - salt_master

  # salt master config
  master:
    user: salt
    file_roots:
      base:
        - /srv/salt/salt
    pillar_roots:
      base:
        - /srv/salt/pillar

  ssh_roster:
    hubble:
      host: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9AQ//eT4PCg7iOc1o8xbt37hdaKffrd/71z8ij2QFvstNj0eU
        ct1wtwOG0JVpCGBuzkuWBBvvTaE7XkSftZDu7qhJgLEQr8MZ6qX5gCLnfLWHSw8o
        /QSmq5kksExHnORrYCsWtbg7GEFsn3rExon5V4/CzLtCRitEwUEJ4lqaMzi2/eaT
        QV+yXfcZeMgV1pZv6ytE/50EcA6fFhXF0MWAEZdZzmG7PYEl3iMyHArS2zOtHCeK
        wjul0kU7Dez0W96uq2gWtqnIjqlfaFLe7HG1/CqcDK1QOS0JJwiFo8M6B2obrDkj
        a27TSUwS7ZrbZBasnmGoOokkxapeVLyuAmppwPISUiqZolCmU2b5B3kL/3JAFl19
        p8m2XYC0+cVtaa9ocLUKsmRrfECuCCEANC3sMyI2D/qBSgri/Itnn0yczf2hpeJL
        pBjo5ExQL75ViADLn2GefOw24Xrb3e9QGvRCKezOt0g2QjNPBP/Lligbry37YVD2
        7wjnxQpWVF/bxdh4+MBmjSCLVUzD4xCOpEqCepTLJQ3hJmnRl3v2M3wPW3RTC0Eq
        JWofDhAtm9eNFYLlAFIL0oDls5P9ZJQeYfmARipsidxy6IHJedVpg1396lkCuAhu
        MFo6Kc8JnhMy+kAABxYKSPseiklp5i1tz4eJkPDyx0jQpqkX/LaG39gel0Yq3QbS
        PwH6wz3DGKkbSMq7fwPxVXrqAUk7SIra8CFMQde15+x9y9QSn0Eudy9JgiwXZF3C
        aqnNn/FNKZ0h5SHgn9jaDA==
        =VF0t
        -----END PGP MESSAGE-----

      port: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9AQ/9FzeedPBeMvV3B+Rs099QAFO95o4Us9AqY7LaV5rp3qXs
        Ax5lnaNzCQ93ZEyswI1dVpNzeP9PFUXTwHfsOww3gD730RCsmy/p+6DAIZyl12Uc
        HqlfPKkfor2m1B5BetWaKP2w6UBnCygdYTDbrt8aoT+p4mtX2yZS8yQi7y05XrMX
        CSOcclvqFaRc5H7zZRnEhHcXTB2wYSOfSJtaRy36lnXVzWy+3bSa4mz3o4CkA2rS
        0UvE0fM6/HqFtWlsFEfepAaXzHiXt38y8BQoqXrRdiTXlIvi20k3eoW2nZgOJyfr
        EltfTaQXLOrMCWaukAUbnHc7oGs7ReYNF1JP0dMK2BnLMe+1xtFAGC2oAAMgbDut
        dwyERzUwL4BEfgU1irQZDv8ZotmqEdASZNvBVHyy2LYYpMw3HJLK+wntqeZeg3+Z
        oIiwY5d0QiF4oqafYKsMAwEap5p1rK9nbkL3yVwmYB8nvh8ThniPZxJ6wXGTlgS4
        rcON11HSYqX0jr1v5mCywn+8U/hblQg+zjN+naXV3rsPm/agg9Hijch8wyb6s8Dk
        lbgkGAueni1Cp5CPLg7+/KYi/RGndJ2cAsNDOWCD7JUZy4CqdldShlDwiJ52R2Py
        gVjC7Zb/LvZ1gM2t15QM6bcaVLAg2MrXY+k4uLl0ghFkKpEnW6jlVARRDr3sraPS
        PwHSDIKFp+FlfNFEAq0YXikLRC/F5E07r9cc6RdIXTzu16MycpYoJgPZyIXk9UBp
        crOdjEVb2KeDcMBDE2iLRw==
        =27JO
        -----END PGP MESSAGE-----

      user: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9ARAAgmGh4myu4Y+MDX7tnP7qKq4LcJyJ7cdGjSIwpG1wQhm9
        Off7Zg60onac/CnHe5stIb5nYvcF/84rML/lRIjvf6qozVPOmzg1HiPIzabeUspB
        YV7ab2yMBFzG6fn8fL+IOjKrvSWOPR+5tZFMT/HWn6bCqPvbgAOXYRDCfN80YZ5i
        +9qOQ6K5ksPPquWD/Xsh2ONBTNPpGde+pvaIW6aJr6BeJvlrh9/XDzOM3Fakpfwc
        Xjy+3yXKsDj4wP7S3WPLS0MJnVRgHAzgLsBhDNX6/bYZT/UV+Lc5h6KnCmCB1bg9
        kPmOqS5IOq6hT3p9jFphq8LIF7UClKaFmwXKBgF+U+mrL8SrxeEqWQBI03bvT6X4
        +TN6oyKy9QfFzNvn5nMpv6umnsDBERfqWm9fZkkTuSF7V5TKwihveCOWSlpeIGjN
        3Q5wuf77lBB9ZIzZBmaJHf02uJ1IgV7i0VWke7tCU6QIGQdj4xIZZo7utqeF299e
        ZNqN3i5glhRJNfyZhoVFWKsqNRv0jKKgVaskxuVfUs0dPyqIfaCJsBBq+rcMWlWE
        uZbZZpei7nbRRqYJsrFqvZpyWefEbjPhRMpzsz/aaTs4TD6dj8ZZ4SZd2gkMH32g
        URpnc6zpEqTAjEJ/pQ2Y7LCTKHa6zP/mxUtH3idj9vhnzxgZALxWSZlpVSiW5FjS
        PwFfm5bYaX0Cpq+RgYnKv1uXEc1zfvstJdbDI8NVVhhpaK/vVFE0voCFFiFQY1+J
        LKJMC5z3qRi4PFaRGVHzkQ==
        =q+2I
        -----END PGP MESSAGE-----


      sudo: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9ARAAjfiKK06DmqTox82f6bU/LUCfceUBWLLFHvgy605SHYfy
        jepLfVvELuzsuoNNTno3eEGk/SoojNZ3c46J4okcvIoDo2b5QMZO2LdSwEuAClq3
        c0h6518UyYPoNu9qGe4uWM4S1UWxhNGmc4QEpKN6t1JYB2SoGxVk539lgxOrBUi7
        2WktRbEWU42ebtphQXEEKqpLCZeOyYqlM9xD4cMEUCImP9dQJaFtpcEtGVH0XubL
        IA4kyhjEz0Cw1eKZg8CIdX+DfkCfulWoguzXHM9/zvpQGqQccEVLefOPRXHgJMnJ
        whW95faSU7RJryVOFPn71unKTRwowJbzvuy8hyxfoHCDUtjUdm0Dr6LVGYe/NhYA
        BUPGhbWQL2ess1nDOHwTCGw/G2kxYhBUAnflKWXvDrFNwDZOtajqTaSTV1AsJH2Q
        gUzrApnhaAM7EBhMFxncVPQ4qFK2sUag/1veTE3BfpUyfijxFyO3gWikn1lEI/jK
        18S+BXtrozr4KeEpMFzoA2+RwClpcfCZyGT2HmMxmPzAhF1UDv/ZZTWdKNU+Auxt
        2tb7soWEx85MqBeXM7i1wdvQ5V5MlMq1/egm9/tZ6MBbyftkVfH5298qXJALR7Dc
        cNOReKAUlCzDNADlkIvypqCbGRCqsgqXfQlxyZ+gQ3hvqf7NVKafajXU7twq4+PS
        PwHCFE1D/Tyc6S+OSc8YUtNyeE9wpqpJxl2MBWxeZvctuiyLz+KD3RlhqW2IlJOZ
        ohB1x7RJCKy9PsQWWlu+/g==
        =GcLR
        -----END PGP MESSAGE-----


    coco:
      host: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9AQ//RBXcP2ohcZ+5dx6bgRxBdJZo4zmBcmp+DGryjufgFpPi
        RhgkCarR/GbNbY0x83N6T26riy8XxqS+qs0xavIYGNw3TxpmpXektlqhNl5a2Ok+
        WtvFTGWaWtHjL2dNBkpMcGsZ5euhGeHRVZqFP2rXlmbBtVbUPjTEU9n0cESkgSaC
        MnIT1DtoyOBqc/6Jc362cFV7U1np95Tuc17jwe0nkxwdVBBpBgXX7Fx+pG1p4TLR
        rxh7ntF8iOyE+L5q9ALIo56jSZvYZNQPz70I+JN3hKZrt2bTnLMLscbIA+TAVfnJ
        bwd7bq8Bi0DfFQPFoZU1h/bza2gTfHSBvoHM4gZKrz0TBdAALO98MhMjUs3+ZygV
        zG9jcSIW+uZ1SKpMuyuokXxH5mvITfw1W6D55vaN1Zm+DtAId6IHtmQ7vif10er0
        0WptgmTKjEghXUxzVtU7ASzpqoSKlQfUhieoaWV22MnTFENErYS9OJbnyflSXhp5
        iNwT2TPq6Sa0OgDrU8BaL7EFxDNH2TqKEygMoNs4NBfw8utjmW2jc/huTm320lx5
        s997rVtYRn3+QgtzB0xdotVK8IBrso2rZ9j2/XJuDieYdcWEdrsf+KFgkiV4mdqO
        MQvlWObDyZ0BQ+/v0ehdRT0uc1bJU/A2moTQjQvpW62jACZh8qTsevY3ffFBLhjS
        SAFcZf0zyleSgbI98xZKP9fiBAVVX4xmrM8nl2Tqmr8sfcamnJFVDx5b7zv6jwzj
        t/+KRlrwL/DZ5+cfCjQnuaeXkyHqd4YpcA==
        =LWS/
        -----END PGP MESSAGE-----

      user: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9ARAAibMuiRRud0MerSCbCjoS6MDxGRbzOONfxoCL9t6lUUf2
        yTky4ddf65LlGV4vOBLZiooVLcg/jMOYWJkIUpWyI0oYwlAlvCCY3fXPJTlKPwrH
        kN5ixeCqMoqPq8JR0MBps5SIcEYuJzmaK4CHJHKE7NrBN5OMNyv/PG24nWbvIidw
        W3L9ZCN6U5RMxiL/BDaJVio6srFHjX69/yIx0QuVrw6/t/UV7YiXqukANpgY/GF3
        5vTDOAZW6NQ1cc7fl3JwpJBG40r5ZvEHCRZehb3+sIRDbHFxh3hnFXNS++WnXQgg
        EoZwPoWn9BX7vjjdl5NPuphLFBsHqO1Jki3Aq9wl7jNEuRuZTL8Nh5ch4nr/Omss
        /dDMupZfAQXMPmW1wK3MqdTBPuWZ055dVDpgB5TzrT8+6p83TxPXBVhRadDXqENv
        QvtKJqyxb164hTRHMRvyHuknGF4mIXry4rTwIJpZt7C10J3JF83bG4cZl/Fe/bo4
        OR62PWy3DmP8U8TMG4jMl6OyxMTjOX64URtiFpLD2TgTUVbZS9bNvPIwXu/1P65D
        jOmcVglfRC2qG80AhNUG13rc/4Tc01jz4H2ZigJJ5rB+sN/TLf28Mf5IWUrDXulJ
        QpS8SlHRbxZLoSKyvT2LtJ4gxZabVc8470Ag2NAFAdMG3mFA0Lmt+LXp6ma0ewLS
        PwGfx0LOJfGHEiDewRqsgYf+oFYsKJ24rtsbMAZCkz8ro7n0OsE1fs1JhjY8n491
        6h0ruwKBFGbdRi3hQbAy1w==
        =FGTL
        -----END PGP MESSAGE-----

      sudo: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9AQ//aCWLUyV7bRuKFYvAJ/bTzD16e47dWcJL3rKTtRrIqkSz
        cD0kev5ALBjsVeTfHfIbNXv6pro2zWomT+fYE+Nqr+6ePYO9MzVhMscJE8jxqECM
        /ITcRdMqPG5t1xHADwCVYjNjpMLjZanpd0IhswDBSlchVMoGwY1S+3QpsQUHmxb1
        BowhnTdv/tPBfyWqgw/AgxnLnFOP4phweh2xMQigyPUTKAwPFIuNjtKKhAX3vYNC
        ygA7SesOQ6m7QUK88O5bds2g8i1n+CvI2P8q0TtzbB1f+zUIdLFMO0SKamHtbTjl
        Ct9yz0//yudRuXL45gB6MJ1zUXlcL55LKSJMdjA5npi6P4AJT9wBr4d/RwHX9kH6
        UdOtX7wni6gpTwjl5hSUcbp/SG1NTuYxf3Ep8gU1QQT5K04OrLYnO1ypcevKqH6P
        GD5jbCxxDZvETaafl16lnXCaXUeOIxJyU45p5us7Rxfdh4/V9W64C7P3DKnqqaWh
        8epZlUKPU/GFmQqJnjeMTzqNky2G25/eUrq1kysJ4oPb/wh/aWA8gN6eUIa3id9D
        ZHPoZ5bP+OdH1YoS9NMV2at+af8yE1Q6KkkdpWJMNFtjsJpIIP7yRpIhxr5DmN6y
        PFn1O2re+Nr2AG/HtBGhVXNmgIM2/Ef2ZqXr6nG62UGna/E6CpWx2e1GBXyReszS
        PwFx8U98HNpxaLvMcrja+4Gtah5JKXb6ZzkUWtS/d9t23zl6PfznEMNcqlprR5CP
        P7sMI1803JikNjQo+c3q6g==
        =fHB3
        -----END PGP MESSAGE-----


    summer:
      host: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9ARAAmhfVgCfRNwxL2Z1F97q/CRJw5t2ehobfKRCNBXtKxgFq
        kNqvZtdj7CR6Fm9yl5L/v9m4jM0deBdLkDsXm6WEg35pJb07pj5QncyhbZIVYGOf
        Osly3j0yxXyewbeVky8AK4ESYgJ8yXUPXsCUad7FwjTUKsG6FTCCaYXFWcEqTCqc
        gByLbNkbI6POFfU84YYCsp8xkZVBeV71RoDzQMF3a86FoYiWBsiNmEDjgLUnAVLN
        PsNEEUWnzwyTIDqRJivmbaUmpzfcbfR6nOkn55oC6LqQNIngeGlbKVny6uaJsv66
        aPgh7CA/b4klL/1SnQ8bdnhHMqGc6Yacz3d7MJZwnLkQsgy85IhxRXfVMwDA2/Rx
        z+HZDE7POpm/QwGAML5FxeqD/HlpFI2D7gA3AXCXKYPEqOX8zb96OaqXHD5WGvkB
        Hu2rC920pS5rHBa7SHBhoPDMFKRpml3PYZ22bOAmTBmJWfYmfgksfhNbS/tLivPv
        WbHQDi2rJsuFKnHvkE/u3GNKkxDsjWgqM8o1GbRkbINh242fnf10XoPYmS/eCq+H
        UN6DGOFbnuFECP3to5ApCi+U0UVkeN79ksU4yvaCWc1qq07+ZOMTGrTghnvHyvlb
        8MdtpCKTA2dqCQ+lcc9ZtX3ubwrKjS1hwFEKeXpyhK/vAbTUiycWYlTRONlp3oDS
        SgG4mD9gRZRDm05thufAz3BNwyl2GJV4keYmjGxvUZsEgaZ/m6IQH8ggt9SFU639
        efCquyhMb0ho9kBRa/KmFB14nTSwcoGXuPZK
        =LXId
        -----END PGP MESSAGE-----

      user: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9AQ/+Oz68H1L2tVV3EyFXKwVvltFT5xPpFef/Eu5zyEl99b7O
        apuxV2Y8I8by/vfevCaT3ovra7xZtUQntdeMtmH8wYlG67TJ7+fkUNO/LESlaIWY
        hRcXlujVYzB+TaG+dghMfmDjgZUh1el3I5p3Zj3Fjzrx2Fv7IQmqGYJFQzJc9EWs
        c+gptAfCZC0mKXvbKMNOYcZ9xaWE5QQ5LLjyGchdIBj4NeAGbNtLk6LDhKo9D8h1
        Ja4PcAaKTi38QqeIxvrXMUBWCPW2QTK2b9isieBS5vELKegGuU+PFfspc8PxEUcZ
        Bb+X8m9scUKc3jOn/QhCi/3K8xPwi0ryGyGvrew+4H3uNTcyo5LQ0VX0ugXjVLnO
        mdjfBbO37CwcFNDG4kLTc5SiB2fVheUUR8ooyJ3aFk9KZCYBlv28MtGtxAwqDMJH
        MCTAeBaeAiw7u4bB2mM1/vMs0fABZjyYu2zPxZnTVrgNoeBLxUGOqaC7uO60XX3E
        Cknkvm88KSK1dEyRhyT0WoH2sU66g/Q69D6Xr7x4U+QqV5lVH0BegQdSs+2Uy5Bs
        cdIqEd7oA2w6YIOhk6f3ev42PjNNzLVxgJGD6cay29uds3283F5nHidq+tR14D9U
        7rwvxRJfF+R6bmr/yvLwULFk8dDeQTv04GDmU5/Y7kEhNQqTVyPGHACAUJQqsO3S
        PwGrxXPeHfs5o7Kk3GHROUwKRjy+GVwxGIgRUGpJIGRWadZWdNm9w3du+ZPVLEet
        pvTBwuoGzdDDaLG17lHdLA==
        =VfB/
        -----END PGP MESSAGE-----

      sudo: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9AQ//alR0FG08QiEnaKWFkfjlzYpV1u+XuyP4kWdNyJjLlhIL
        l7SYPQbsMmV6hJDM4z1tNSSCIjzgFbfxMF7BoEgcJsEv2jTWz2M5OqcilXHOf36Y
        lpyaYAlzf9zZ/+ovTNO5hrogU2Q5A1xv9CjR/aYzRyuYQrOtAaNAWxRdva3npxeR
        DcIKanLlJshIECYDsZi1cQk5KnXi8uty3r74Iy5abZmBGjPD10x6OwBtYdPUpAK5
        3qG5cCkrJqiXNeqhB/DnmoNpn/LtH3VNI0MXb3epialQI33Pw/0V2i9BL6g6J6tn
        akTANGbXsq44fp96tVFi+ozF9sKw/VrMHx90qcL4OEJa/n4YM+/Vth1ZokP65uvP
        KsyGYjcM6x/U+UUZzfqPDD/amvwsa5ItZYIjlENH2NPn0vmGw+JExbNMOHC9tXhF
        GF1RILglZPQNeElfGeCGb3L53Orrq1fVAq/0MqBZSKHMq2xKnHb8I485RK5FhvRc
        WqHEK4AihrteuZHrOpSzL6KXzIQ3vr0AKzaWirXEZ9mho47631knJSuQdvWHmQYN
        7TZ+FDPvn3bq0JqD8VGUcO3P0ExnhckINbhas93S7xBFk9EMP8Fq/nmJQdXW7FuZ
        32T7LIMyGUvvfo/jhXiQunsBSffPir+S1v7snh0/kRmkIh9D/9DJytA0Hy7+kInS
        PwEF646z4PIjAgYM8j45qBQTOdH7UN0AI/apLFwtogGAluAVnPkuewgwmI8IxMIN
        nYo3EBefzyco8GE3paLG7w==
        =Yr6W
        -----END PGP MESSAGE-----

