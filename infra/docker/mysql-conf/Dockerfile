FROM mysql/mysql-server:8.0

COPY ./infra/docker/mysql-conf/my.cnf /etc/mysql/my.cnf

ENV TZ=UTC

RUN <<EOF
  mkdir /var/log/mysql
  chown mysql:mysql $_
  chmod 777 $_
EOF


# Mengatur variabel lingkungan
