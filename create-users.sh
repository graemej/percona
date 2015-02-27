#!/bin/bash
set -ex

mysqld_safe &
sleep 10
mysql -e 'GRANT ALL PRIVILEGES ON *.* TO "root"@"%" WITH GRANT OPTION;' -u root
mysqladmin -u root -h 127.0.0.1 shutdown

