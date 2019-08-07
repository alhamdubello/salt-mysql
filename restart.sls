mysql_restart:
  module.wait:
    - name: service.restart
    - m_name: mariadb
    - onchanges:
      - mysql_server_config
