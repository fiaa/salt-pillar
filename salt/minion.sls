salt:
  # Set this to true to clean any non-salt-formula managed files out of
  # /etc/salt/{master,minion}.d ... You really don't want to do this on 2015.2
  # and up as it'll wipe out important files that Salt relies on.
  clean_config_d_dir: True

  # This state will remove "/etc/salt/minion" when you set this to true.
  minion_remove_config: False

  # Set this to False to not have the formula install packages (in the case you
  # install Salt via git/pip/etc.)
  install_packages: True

  release: "2018.3"

  # salt minion config:
  minion:

    # single master setup
    master: salt

    # multi master setup
    #master:
      #- salt_master_1
      #- salt_master_2

    file_roots:
      base:
        - /srv/salt/salt

    pillar_roots:
      base:
        - /srv/salt/pillar
