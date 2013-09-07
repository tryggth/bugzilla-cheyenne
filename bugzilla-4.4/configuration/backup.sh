#!/bin/bash
cd /root
rm -fr /var/backup/www/*
cp -ar /var/www/* /var/backup/www
/usr/bin/mysqlhotcopy --user=root --password=bugopolis --noindices --allowold --regexp ^[^m][^y].* /var/backup/mysql
/bin/tar zcf /var/backup/backup.tar.gz /var/backup/mysql /var/backup/www

