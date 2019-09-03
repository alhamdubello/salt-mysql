{% from "mysql/map.jinja" import mysql with context %}

include:
  - mysql.restart

mysql_server_config:
  file.managed:
    - name: {{ mysql.server_conf }}
    - source: {{ mysql.server_conf }}
    - require:
      - pkg: {{ mysql.server }}
