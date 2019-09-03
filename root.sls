{% if grains['os_family'] == 'RedHat' %}

mysql_root_password_set:
  cmd.run:
    - name: mysql --host localhost --user {{ pillar['mysql']['root']['name'] }} --password={{ pillar['mysql']['root']['password'] }}
    - unless: mysql --host --user {{ pillar['mysql']['root']['name'] }} --password={{ pillar['mysql']['root']['password'] }} --execute="SELECT 1;"

mysql_root_user:
  mysql_user.present:
    - name: {{ pillar['mysql']['root']['name'] }}
    - password: {{ pillar['mysql']['root']['password'] }}
    - host: localhost
{% endif %}
