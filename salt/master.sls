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

    dev1:
      host: 10.10.10.9
      sudo: True
      user: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9AQ/9FF4dTjQwfVFYPq2CKOLuUmBoh6hjOluRZDf7ehTqkK44
        1PPMI4lTFCegqx64YeWfk9l4sECGwQ+i7K4TxSbFuJhrYQZplgvIpgLcIauQsiYX
        vLRihPNnryPpKxQvmcT8zQ8QU/dKy4y3bUoLbKz4mOeeYOV4GRQdkQzEC0Rf2QXl
        Zg7Si08NsuUM7tdw0FC89RppPn3jDjPccYek+0PIn/5y28gHdHG1Spv0zNf2T+Bl
        jUuKcqcDA2dwzBovGroLGB3g4mh7j7MBlJyQSOaaJaxN7G1ZDWSGAjVpsZa7eBgG
        nVTtS5+jB4cwqiHYOTkoge54e9D8LjO2O5E6apQNnfRFlqmYBek+t5n67VJ+I85g
        /VVDjp5DVHzMbq2Jo8uhjB6IpEvMq61e6MlEQAURpxMMb5ldZk1Xa7TKCV4GzA9I
        /6Cb1cUZvuDfrqKY7K2maHJ5asEVbhlfKiuQAA8gYHmUs5t4qdc6k4z2x5xfTeJN
        snoW3ZYNjH4THNY9SmOJrhL0iNS891QocmlWsfeasASryAeWXEhIesozTWZm+oxk
        fBlZ8K+Oqm5rujnYkV39kRfg+trV/8rUpWCjqH0K04aL9MDDgqUIUQNzAh5cfH/D
        KrcnKfeqmk0oTix5+8ro4AdgSHckXprbtlHGv1qxmhVM7k9cCcIGErN2i98yOmXS
        PwH5Rsl78aYFMQ5PBz9bvCvpZa1RQF0YbFK9mHgqr50Jhp3xuyLU8AjkHJzmepPN
        J/8YawCbIcCtVfrCb0D+UA==
        =B24H
        -----END PGP MESSAGE-----

    sensu01:
      host: 10.10.10.24
      sudo: True
      user: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9AQ//TNZZm4CpnQFIKiY6+gRyQGQo+Y12QHyJ8oqXkfCFIEmw
        Ydnxap21lTl8T+ViLm1PYdypRTAG6e5S7qzoUdLxnOwkVthB8tJsWiJpRHvQYzCg
        UFODKz4ewES0TpeRoGhMBZAMnc/1S1bfabBHV9pAHJFsr+8BIPpLBusCPzgjxvJV
        os/o0iv0hHUTbddEatJSqAjTU0aHIFczQEzpvlsU3iRaru+S4TecE3/TadNliF3u
        OgQNZIxGSy8rJQ0l9FqhNTUvwCn0FKNIe77UjxbeuaMrJwZFNvyETSUY7rLCs+xM
        ceOfUni1Qnuv2jWpGZO4+Glq6a8N6ogeRGrgtDE2pOYy6E0KjQZIn4YoiazTNdyq
        SeFsKSr5UcxtXwcc7LHyG2NQDwBjc3CbA1A3iE/lqRi5JyTJVsO8b7EzUlPjWt6p
        FFgUFsFkxXqGH6ksiOBgSC0spuoSMRsHDmsYZ/oF1z+V/KZOLc+amg5Hx5eTxtyA
        ox7y2pP/a5eidKiW75ME0jW/Ls6krrvboqvYU+s3I+CD0jizWa/oH/M7qPDUmsX7
        gKHC/pTz67jQNTGe5AwyyNftu2UmXH8wn/AQUoeWcslhSAmtNZBnMYmJCvpHPcMS
        BBrdONQr8nrBPCT+vLz8jCl3+oIRmj7gRW57Oa/vwABj8f2fx3IIVPZXdITL3ifS
        PwHdkOlUwqT1oeMQ/9ZfI6Ukmbqwn4HYYWYSBxKI9K4+zkdJNWE+GtwynvKy3NEE
        DmnXTq8UA/u5Rf7vIDuFIg==
        =lt1D
        -----END PGP MESSAGE-----

    sensu02:
      host: 10.10.10.25
      sudo: True
      user: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9ARAAn2CxqiC0LLLfZhIh9gZCmPwvjuk0jdTkusK9MG+0Uv/d
        lTPvZum0xs+83iJ1QjzysR4OPK053kxyFMWbOBte2aaQoZFQlFjmvKeCVqOtUZHb
        ozGG2UIuu4BUGeHKAEy4WFAZAEs3V4GYo6ZJXD+kA18jPKw47gHyl8SwxtfWuVoE
        itFnSmd3H3qZG7QFGdC89VUDMIwB9aiCtoNUm2SUtT+uR1EoXi4Y+4+9tM3S0Q73
        NW3JgbVwny4Yj7sxMSey7q8C+E6UB/o6rrJgiO+uz2eVYm9I4d5Avm5sCL4C3Dic
        Z31H39iAoe2vFmLpGSrNt5HdF30UDJ/sgIGpNx+Gl3dFiOXqTPL2OLfoX+xCgkZH
        YDdqWrc27/c52qL71X660uI8hi3E88bILKxEqIxGbjczTHFtN9JX7xKa/gwrc2di
        Uq5fpaQDtzJ6N1A+48YfEE1Kg60IS4obUkz2aroHdikqKn+vviMJ6UAJecL+wXjM
        1sUR+vkERM3oEtH+pTiKykGKNG4/S+NZUkG2/QglqrFhRLP3FA51giD8aY6KDNC/
        3MkT4lCOGRuYSg8aoJFBo9jW1WrB1rTwEsfxl4ll/5L602WMbl1Qj8pM2+vkzmTD
        c3LRbssG1uK943n5Bqzky7xMg9GBDMNcoK4s9Ku1oaTYUE1NiRClIQPHRaJ0pyvS
        PwGNryPLJzYyT8Gw6u/YopB0LdtXTbQmZNlR36pji3jRUGcbJnF0orrv6i//mckG
        qnJygY/aUs/NhcvDtyd3Kw==
        =aBWx
        -----END PGP MESSAGE-----

    sensu03:
      host: 10.10.10.26
      sudo: True
      user: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9ARAA0EENphf9jbPYmxGxDk0r2LrWiEIvUB3PRC7nYQkAse8F
        YBurGn/TEyUAnTZXF5B0BnfMjV8ngD8PbASeU/AjSdvKsKc/aNfbYW0UNjf4N9fo
        4YxkuqTniTMGLwT9Z13fItjo7tocf8UartZshBXy8YlXwsHm8xTRgT3gc+ie20UB
        7BVmxzkkok9eF0C8y6zAo5w/S8OmNWFtckL0cdflqcr6yEB1+A6vPhvGfjRWVt0h
        eZwj1XnaGDP6ZsnWAoe+b7bZ60PirezelUChnHptlILC2/3pELrGgJDf3HxmypKs
        dUfBAwNPPlx0dEGcb0y9Fvss56X3cE3npscrTkFgPrD6802wnBg6AsdJ+MYc7JDM
        w/eC7G6UeLKHNoVPWF3T2KlG/ZnbGH1vuWl7JQY40h202GTZSyaf0GnhOLyxBqXx
        gSRwWFsPopUk1tF9zwz8N8EDLh/3RMTjdiOMEGsxWufUOqGmDrznS6Vw0W4rGFxh
        iFDOty4UtvAc1p3JZiLPTH5ymTy0YzzqQ2xNQjpuTDQ+ettoV7ZPPmQI7RbPHRQl
        cKC79LGrTRFwaHdzxsGkfMxkuAsE0z6W2XoEJj9HCtubqlOdZjbUYkmrCifRkF9I
        V6rYcwAHjvOGshCuCA9h4jY4mZTsujo5CO5aOw0VZ7qrQWVt4dJcon7pr6cxPcvS
        PwH+NgWunjcuAZdWNqx3p9sm25PPj9i+eCAqllRPAFACkRItfBr/kdnLCOq/XvQ4
        QrF12H5IM45ZniWWuioHtw==
        =pNOQ
        -----END PGP MESSAGE-----

    redismq01:
      host: 10.10.10.27
      sudo: True
      user: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9AQ//TDnAm61LqmTVygr31QG3DB7iDOWbGQDqZapYtqrHN2+f
        aSLKbSLuXFR8v7dUnvWrOogZlFgxH+smRbU/2NYLl+8EHZlj8IY1zhai5k7DBqUC
        Zeoa3eAWIjfIp6kkqSMyhue5TWBA1WkePUatA0Nfq8tsujfKGfT5lXUweTUdgFha
        qN4rzFGsNBdqw5LHDk9iIfYSglkfEXEnpW4dxQlA5N1yrKPDJ/kKzNN/cgpJamMS
        uX4GA90e2g0+C5Bk+sO9eZoSAax6FrQC5vw6Qiif9eRlQsaNCt2DUOiIBI0hPF0x
        e1XWUV5L3mh8FrJ9Jmmh0z4exmKm2rIIFk5q0AXhrZI5tYPdULBYvpys4YwDyDvn
        i2hMqNtV64ElrhGqD7AQF+SJ3jbKIQv2KZpwTTJh5cE9/woxj3XjUhumq6klqWbO
        bmAHSqLbdrnlPi7p5iwu1S+zOioxAfoQL3eyyW/1QRRvz7PIcWV0mqAIb2lmrXNG
        gD1NgLqGMF1YSE1ue3wA4FaMZEqUo3bsQiej6fE8WZNNsawEYTr3Iajaw13Mwf6z
        ZmZ5Eg8AjJpQdUt1l/d49sOuYIO2Z8UxgfD8RuN+VmayOWe2BEwLZe6yQBhKYF+z
        fB5U8nTHOLHPgP58PJRoGqYc/jBsgDWBiSzOUHmHWti4Wc4gf4Eoo0LxecoThe/S
        PwHDWQAkW+wQC1jofQk/m/aPnFfK+jWckHTXyWMrAMwph28eKZjdlPn3SepOd72l
        Zk11rNOngxjTE8cnunR0PQ==
        =uuN0
        -----END PGP MESSAGE-----

    redismq02:
      host: 10.10.10.28
      sudo: True
      user: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9AQ/+Nz7aUEPhIyWStFMr2QCqSohc05jFgo3jwmGEG2QVui/p
        gBY4zqyWhmPtxgIbPVBPKzX05tf6LmOURJqZQubmLXYqvcb7O6/aHdqk94vEcpTq
        vNmvKcEpJuUN3ZuUTsB6uldvfmUVnBfV1hp98Mn1oXLuLMCkcVHhv1lpFSa7l0j9
        6PO+KjG8sNF7ax9BxnOPa6fHn2RmisJ9fMbHgwHZhCAEdcvIsTx4XkHqQ9BnMe8I
        TWSNZvwf2RKm4+NJFoPG5/P00ZQeHsBFPXhDJQG9SIbe7ldiQEr/FZHNgT5G0EMU
        q7zGXChM6R45rsFXfEJZF2fIldwdXuAjRCRedzAzyl0zPxbO+Do7U4xTrR1RdBQC
        09nfmrR1hMmPc8tUnn+l2ff5SWMbTToSDmqUqdxDYWVaNeZth1Kt/6Zk98lN1xVd
        TRpCFWJHtV326TZ04whoWtraHB8d5aTxBVrzrimP+Q9RVfXogPoCvti92yNHOSL8
        fTQc4OSb+JFWdcrOpN19Lb0t1QrCuqUK8HX3KedrHNn+8LnTX6mSeaM3ugbAuM/A
        0UcrkJy4FHE4jPTZaQAR9PLS7ZH0+WxVF4oUjfeoZ/TM6kz1hochtnzmvsN0qsPQ
        LxVf4+sAN1NXWnm1IJ0LBgkrx9E10R2Q3MvM0ipoCFctrY1EEUcPzba0Ls6dlwnS
        PwGgvX41j0vsZdYAe3Pl424ZCLlU6CKi03btJVmxq16PirQPqwFjlzCKLsnmrWU1
        zKTtFUFC+yHQGvhKMb3Omg==
        =tQCw
        -----END PGP MESSAGE-----

    redismq03:
      host: 10.10.10.29
      sudo: True
      user: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9AQ//Uyeru+WKbDPZHDfsxPeC+YekBrPiXTBUpyfjPqnhBlb3
        v0HucV6ZXjglyolR/T8oz0swa+jK1ANsqsWaF6Qxtr13tMvURrd8jTn747W0HVxH
        wr26R8KQ/rXEjk4+Vl3cLejRX9Hpz/5N9XmwtuaCd/b/XQQu1orFuDinUxMCE7/P
        5EIldngXZhxyUUOdx0ORRBe8BnA9CbWrRN2er65fSaTdl0rEk/uEHbnqIwQYmxNe
        FJGreiJVY8kxJ+kO6DgxYnIj7fC3wuwByVFhyvFdvoqTNN/Uz27WWBCQwkDf9zG+
        smpZKolWy8O/igrvhB1BHYn/w4TcDxzoIC5akBQoMYlindaObOSmKDCrRtemvqHP
        3Ribsmcl2sYiRW1ACVUekZa26U1mBRQPThjj5J50emGjcdNs2618ebQEeHlyxiHJ
        Z2cf3Q/wA0hA3aE1gk6NfeOBkrnbxJ4nnaWEdpX/KoyJIL88Y98n4l8sCzPyiQAo
        XcP0RaH62IRYZx9YFBbW1ymnxp+mqDXIt3bkkBD0W8UjMR/oqV8XyZIjKVrz6dbA
        CEWfl4NnhPLAvcc6ox1MdXapetmwJxm/NMdZ1k8NutS5XiAhWyDvnWB8PsY3RFaQ
        CoUMFyyZy/JcLzspB1PROOFcr//dcfw7uZpRhu6EKqfiMcsDTBDBSf6wpyieCQfS
        PwFyvt62S6YOccZMg9QgA/1j5E6ZRtNbAR7CNj4Ev//dNO55c97aySfw5IqNieh/
        C2embwCju0nPAOc4v0h68w==
        =U2bb
        -----END PGP MESSAGE-----

    graphite01:
      host: 10.10.10.30
      sudo: True
      user: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9AQ//SnybFzf508lW/yD0jFa/qFzsAka5D6Fl1ltUr6ILy4FQ
        xJ0gS72YZRuPg9PI+y2FbPrbHvopNj6AatD/cmqBffDb07HwrvNX/xgpGUK/RGNB
        drdcMOQUN6QcAQ3s2zY6oMoIveIowCiTN6Zdf7ryVpMbIzT0uHsmhFrMzp/vMZLx
        qfTlYhlk+zdQP845O2UHERqIo+wmyePxL/e1RxEoiMfcQF2reE9xnZM9udd6jRHG
        SbhhU1Kx+NicP2Kl2KnSoYpD1JXwf8amWFhPsbCtGwnbFZ6S4bZWr0Aa9AStNnUD
        Ae7U2WGQogLZMSAP1xxGvzijZ4gJf6wOoV9hIaPkSYK94kRgOtUdpYzUxtno1Mgr
        Fz9N/iwQHvWxT8Ok9Te6GNcbZp8vKTbrW3CuAf+amdGpSiN8sORJX6hWYhqGhD8M
        LiWWiKr39BRw+7RqRHQ8Nl5PxL/d11rPuSzUMaL+RUWVdt95OPuO+uPpzheNFYzo
        30wkVznCd2ExHD0mztwVBLrpg0Nsaw78nKqVobHEf1bQE8rcGS3CJeayv9HsGn29
        isz4KUunDfkAcxIKhDwgbo3jORy97XvvMieqHgb51sVvPjssqiGsRJo7MGev7c3f
        ss0Fuv8qsGcivsGJZ7N0/NvAio0qVX+KY4hkruBKc7N+jhmkkzxFQFTXvzle5TzS
        PwH37iNG2F54hX7E9mhb7jJ++ptitk+xsopfvwS4smHN4MHPgylruy1ngPeGzQBL
        oQHYWJjZHnOOqjQMPO7YkQ==
        =+V28
        -----END PGP MESSAGE-----

    grafana01:
      host: 10.10.10.31
      sudo: True
      user: |
        -----BEGIN PGP MESSAGE-----
        hQIMA91AuBJffLh9AQ/9EQcP5NLgnnQAIWjZxa1AKxn5zcEV8L7cLZy+3GN15SXv
        L5nkuboAAlIiNVp3zfMli2hJHEaM+eo7AcPr4+dIxssWTYkr6q7pqL3k4KNEiTIz
        zS2GKT57m/161xSL3Z7bI4cwzC2Dd5p3tQerl/APOnnTgM+lzNjFEP3i3elOJtwd
        2CYgJp0D+TUZpHKAzSktJvjL2ej56iipRZ++Rg7fzBDkMarPn41Axns9+ZpEC6UL
        A0N4TETWsbUNt/W3EuYQncGkwFaMXCfYhlSDYLtQZnbUlTz/mde/M8EAU0sD6fws
        dVnzc2cWlZuue4DG3KL/+Ve0IGL9qaRwkW+0yaag1nWgKuVVytvka1s25a8S+rXw
        RDfahyGud7FQapLc0QdvJK+bxYacvpAD+0S12KRT+thxPweURVAyOxG7ii4/OstL
        8ogIpPS3CfPv2H3cuqGp9asj6m+cDQyfddMH0LYbxtnxpZe7kFbaFzMSg3+4eHEP
        9wwGmbUYCxGH4b/LeXmytVAMc94TMlO3mpJWSh72LNSQ4GZsVt8xn+X51k4n0M4Z
        R5CKj3sQnffwOezVUJr5hk/bsp3pvKOQAI2RWQdY1Dxv30ww3VYhP6+b0MlItT3q
        RXwc24djZQ3gVrkRIwWO9hZ/xANHNivPNqUIrzZAGB7Wy6yQaxHu57wL9y3wGufS
        PwG9n8iyMGd7gLqrImYdUQdb6DrNJoTrx16GGlMj6V2o45vOdTnVsESA4Eu9Dr0K
        +pq2Z5EcD59YfFCS5TZlPg==
        =xWvk
        -----END PGP MESSAGE-----
