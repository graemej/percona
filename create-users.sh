#!/bin/bash
set -ex

sudo /usr/sbin/mysqld --user=mysql &
sleep 10
echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '' WITH GRANT OPTION; FLUSH PRIVILEGES;" | mysql -u root -h 127.0.0.1
mysqladmin -u root -h 127.0.0.1 shutdown

