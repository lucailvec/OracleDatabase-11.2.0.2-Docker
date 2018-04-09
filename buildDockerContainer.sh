#!/bin/sh

DB_PSW="ciao"

#docker rm -f oracle-xe

#Look at the problem that this build will have, sometimes it required https://www.projectatomic.io/blog/2015/06/using-volumes-with-docker-can-cause-problems-with-selinux/
docker run --rm --name oracle-xe \
--detach \
-e ORACLE_PWD=ciao \
-p 1521:1521 -p 8080:8080 \
-v "$PWD/static_file":/u01/app/oracle/oradata \
--shm-size 1GB oracle/database:11.2.0.2-xe-rlwrap

echo "====================="
echo "Container is running"
echo "====================="

#add custom

docker cp script/glogin.sql oracle-xe:/u01/app/oracle/product/11.2.0/xe/sqlplus/admin/glogin.sql

echo "====================="
echo "Sql prompt config dropped"
echo "====================="
