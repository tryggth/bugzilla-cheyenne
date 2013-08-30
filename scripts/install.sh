#!/bin/bash

#  TODO -
##   finish off some of the TODO items at the bottom of the file
##   Add support for going through SSL on Apache
##   Do some server hardening

# These need to be turned off for a bunch of reasons
unalias -a
/usr/sbin/setenforce 0
iptables --flush
/sbin/service iptables stop

# Check latest version of Webmin
export WM_VERSION=1.510-1
export HOST_NAME=template.bugopolis.com
export ADMIN_EMAIL="jimw\@bugopolis.com"
export AUTO_REMOVE="-y"
export EXTERNAL_IP=74.207.240.51

# setup the backup directory

yum -y install yum-plugin-fastestmirror
yum -y install yum-utils
yum -y install yum-plugin-protect-packages

yum -y install rdiff-backup
mkdir -vp /var/backup/rdiff-backup

# First backup
/usr/bin/rdiff-backup  --print-statistics --exclude-device-files --exclude '/var/backup' --exclude '/proc' --exclude '/dev' --exclude '/sys' --exclude '/selinux' --exclude '/tmp' --exclude '/mnt' --exclude '/var/log' / /var/backup/rdiff-backup


# Remove the stuff we don't want
yum -y remove a2ps
yum -y remove alsa-lib
yum -y remove alsa-utils
#yum -y remove anacron
yum -y remove ant
yum -y remove ant-core
yum -y remove apmd
yum -y remove atk
yum -y remove atk-devel
yum -y remove audiofile
yum -y remove aumix
yum -y remove autofs
yum -y remove avahi
yum -y remove avahi-glib
yum -y remove b43-fwcutter
yum -y remove baekmuk-ttf-hline-fonts
#yum -y remove baekmuk-ttf-* # DONT DO THIS, REMOVES YUM 
yum -y remove bc
yum -y remove bind
yum -y remove bison
yum -y remove bitmap-fonts
yum -y remove bittorrent
yum -y remove bluecurve-*
yum -y remove bluez-bluefw
yum -y remove bluez-hcidump
yum -y remove bluez-libs
yum -y remove bluez-utils
yum -y remove boost-devel
yum -y remove byacc
yum -y remove bzip2-devel
yum -y remove cadaver
yum -y remove cdecl
yum -y remove cdlabelgen
yum -y remove cdp
yum -y remove cdparanoia
yum -y remove cdparanoia-libs
yum -y remove cdrecord
yum -y remove chromium
yum -y remove cjkuni-uming-fonts
yum -y remove ckermit
yum -y remove commons-beanutils
yum -y remove commons-collections
yum -y remove commons-digester
yum -y remove commons-logging
yum -y remove commons-modeler
yum -y remove cpp
yum -y remove crda
yum -y remove cscope
yum -y remove cups-libs
yum -y remove curl-devel
yum -y remove cyrus-sasl-devel
yum -y remove db4-devel
yum -y remove dejavu-lgc-*
yum -y remove desktop-backgrounds-basic
yum -y remove desktop-backgrounds-extra
yum -y remove dhcpv6-client
yum -y remove docbook-dtds
yum -y remove docbook-style-dsssl
yum -y remove docbook-style-xsl
yum -y remove dvd+rw-tools
yum -y remove elinks
yum -y remove esound
yum -y remove ethereal
yum -y remove evolution
#yum -y remove exim
yum -y remove exiv2-libs
yum -y remove expat-devel
yum -y remove fedora-bookmarks
yum -y remove festival
yum -y remove fetchmail
yum -y remove finger
yum -y remove flex
yum -y remove fontconfig-devel
yum -y remove foomatic
yum -y remove freeglut
yum -y remove freetype-devel
yum -y remove ftp
yum -y remove fuse
yum -y remove fuse-libs
yum -y remove gaim
yum -y remove gcc
yum -y remove gcc-java
yum -y remove GConf
yum -y remove gdb
yum -y remove gdbm-devel
yum -y remove glib2-devel
yum -y remove glibc-devel
yum -y remove Glide3
yum -y remove gmp-devel
yum -y remove gnokii
yum -y remove gnome-audio
yum -y remove gnome-doc-utils-stylesheets
yum -y remove gnome-icon-theme
yum -y remove gnome-mime-data
yum -y remove gnome-pilot
yum -y remove gnome-screensaver
yum -y remove gphoto2
yum -y remove gpm-devel
yum -y remove gstreamer
yum -y remove gstreamer-tools
yum -y remove gtk+
yum -y remove gtk2
yum -y remove gtk2-devel
yum -y remove gtk-engines
yum -y remove hesiod-devel
yum -y remove hicolor-icon-theme
yum -y remove howl
yum -y remove htmlview
yum -y remove httpd-manual
yum -y remove hwcrypto
yum -y remove icedax
yum -y remove iiimf-client-lib
yum -y remove iiimf-client-lib-devel
yum -y remove iiimf-libs-devel
yum -y remove iiimf-protocol-lib
yum -y remove iiimf-protocol-lib-devel
yum -y remove ImageMagick
yum -y remove indent
yum -y remove irda-utils
yum -y remove isdn4k-utils
yum -y remove iw
yum -y remove jaf
yum -y remove javamail
yum -y remove jomolhari-fonts
yum -y remove jpackage-utils
yum -y remove junit 
yum -y remove jwhois
yum -y remove kacst-fonts
yum -y remove kdelibs
yum -y remove kernel-headers
yum -y remove kernel-pcmcia-cs
yum -y remove kernel-source
yum -y remove krb5-devel
yum -y remove krbafs-devel
yum -y remove kudzu-devel
yum -y remove lcms
yum -y remove leonidas-backgrounds-common
yum -y remove leonidas-backgrounds-kdm
yum -y remove leonidas-backgrounds-lion-dual
yum -y remove lftp
yum -y remove libacl-devel
yum -y remove libao
yum -y remove libarchive
yum -y remove libart_lgpl
yum -y remove libattr-devel
yum -y remove libavc1394
yum -y remove libbeagle
yum -y remove libbonobo
yum -y remove libcap-devel
yum -y remove libcdio
yum -y remove libcroco
yum -y remove libdhcp4client
yum -y remove libdv
yum -y remove liberation-fonts-compat
yum -y remove libevent
yum -y remove libexif-devel
yum -y remove libf2c
yum -y remove libgcj
yum -y remove libgcj34
yum -y remove libgcj34-devel
yum -y remove libgcj-devel
yum -y remove libgdiplus
yum -y remove libgfortran
yum -y remove libgnat
yum -y remove libgphoto2
yum -y remove libgtop2
yum -y remove libical
yum -y remove libIDL
yum -y remove libiec61883
yum -y remove libieee1284
yum -y remove libiptcdata
yum -y remove libjpeg-devel
yum -y remove libmng-devel
yum -y remove libmodplug
yum -y remove libmpcdec
yum -y remove libmtp
yum -y remove libmusicbrainz
yum -y remove libogg
yum -y remove libogg-devel
yum -y remove liboil
yum -y remove libopenraw
yum -y remove libpcap
yum -y remove libselinux-devel
yum -y remove libstdc++-devel
yum -y remove libtermcap-devel
yum -y remove libusb-devel
yum -y remove libuser-devel
yum -y remove libvisual
yum -y remove libvorbis-devel
yum -y remove libwvstreams
yum -y remove libXcomposite
yum -y remove libXevie
yum -y remove libxml2-devel
yum -y remove libXres
yum -y remove libXScrnSaver
yum -y remove libxslt
yum -y remove libXTrap
yum -y remove libXfontcache
yum -y remove libpciaccess-devel
yum -y remove linc
yum -y remove lockdev-devel
yum -y remove lohit-*
yum -y remove lrzsz
yum -y remove lsof 
yum -y remove ltrace
yum -y remove Maelstrom
yum -y remove meanwhile
yum -y remove mikmod
yum -y remove minicom
yum -y remove mod_python
yum -y remove mono-core
yum -y remove mozilla
yum -y remove mozilla-filesystem
yum -y remove mtr
yum -y remove mutt
yum -y remove mx4j
yum -y remove mysql
yum -y remove nautilus
yum -y remove nautilus-media
yum -y remove nc
yum -y remove ncurses-devel
yum -y remove netdump
yum -y remove NetworkManager-glib
yum -y remove newt-devel
yum -y remove nfs-utils
yum -y remove nmap
yum -y remove numactl
yum -y remove Omni
yum -y remove OpenEXR-libs
yum -y remove openjade
yum -y remove openldap-clients
yum -y remove openldap-devel
yum -y remove openmotif
yum -y remove openoffice.org
yum -y remove openoffice.org-i18n
yum -y remove openoffice.org-libs
yum -y remove openssh-askpass
yum -y remove openssl-devel
yum -y remove ORBit
yum -y remove ORBit2
yum -y remove oxygen-icon-theme
yum -y remove pam-devel
yum -y remove pango-devel
yum -y remove pciutils-devel
yum -y remove pcmcia-cs 
yum -y remove pcmciautils
yum -y remove pcsc-lite
yum -y remove perl-SGMLSpm
yum -y remove php
yum -y remove php-ldap
yum -y remove pilot-link
yum -y remove pixman-devel
yum -y remove pnm2ppa
yum -y remove ppp
yum -y remove pstack
yum -y remove psutils
yum -y remove pyorbit
yum -y remove python-devel
yum -y remove qt
yum -y remove qt-devel
yum -y remove qt-x11
yum -y remove rdist
yum -y remove readline-devel
yum -y remove redhat-artwork
yum -y remove redhat-menus
yum -y remove rpm-build
yum -y remove rpm-devel
yum -y remove rsh
yum -y remove samba-common
yum -y remove sane-backends
yum -y remove sazanami-gothic-fonts
yum -y remove slang-devel
yum -y remove slrn
yum -y remove sox
yum -y remove speex
yum -y remove splint
yum -y remove squid
yum -y remove strace
yum -y remove stunnel
yum -y remove switchdesk
yum -y remove synaptics
yum -y remove system-config-soundcard
yum -y remove talk
yum -y remove tcl
yum -y remove tcpdump
yum -y remove telnet
yum -y remove tetex
yum -y remove tetex-fonts
yum -y remove texinfo
yum -y remove texlive-texmf 
yum -y remove texlive-texmf-errata-*
yum -y remove tomboy
yum -y remove traceroute
yum -y remove ttfprint
yum -y remove tux
yum -y remove tuxracer
yum -y remove up2date
yum -y remove urlview
yum -y remove urw-fonts
yum -y remove valgrind
yum -y remove vnc
yum -y remove vnc-server
yum -y remove wavpack
yum -y remove wodim
yum -y remove wpa_supplicant
yum -y remove wvdial
yum -y remove Xaw3d
yum -y remove xchat
yum -y remove xfs
yum -y remove xloadimage
yum -y remove xorg-x11-xtrans-devel
yum -y remove xorg-x11-devel
yum -y remove xorg-x11-proto-devel
yum -y remove xorg-x11-server-*
yum -y remove xorg-x11-xfs
yum -y remove xorg-x11-fonts-*
yum -y remove xrestop
yum -y remove xterm
yum -y remove ypbind
yum -y remove yp-tools
yum -y remove yum-updatesd
yum -y remove zisofs-tools


# Second backup
/usr/bin/rdiff-backup  --print-statistics --exclude-device-files --exclude '/var/backup' --exclude '/proc' --exclude '/dev' --exclude '/sys' --exclude '/selinux' --exclude '/tmp' --exclude '/mnt' --exclude '/var/log' / /var/backup/rdiff-backup

# upgrade the now current set of installed packages
yum  -y upgrade

yum -y install nano
yum -y install which
yum -y install sed
yum -y install vim-enhanced
yum -y install slocate
yum -y install mailx
yum -y install ntp
yum -y install perl
yum -y install postfix
yum -y remove sendmail sendmail-cf
yum -y install mdadm
#yum -y install kernel

# Only do this block on servers (Bugstations) we are going to ship, not Bugzones or trials
# install the selinux stuff as described here: http://people.redhat.com/kwade/fedora-docs/selinux-faq-en/
yum -y install policycoreutils selinux-policy-targeted
# May have to change this if target enforcement is a problem
perl -pi -e "s/^SELINUX=enforcing/SELINUX=disabled/i" /etc/selinux/config
perl -pi -e "s/^SELINUX=permissive/SELINUX=disabled/i" /etc/selinux/config
cat /etc/selinux/config

# make sure we come back up in multi-user no-GUI mode
perl -pi -e "s/^id:5:initdefault:/id:3:initdefault:/i" /etc/inittab
fgrep initdefault /etc/inittab

yum -y install openssl-devel
yum -y install subversion
yum -y install httpd
yum -y install mod_ssl
yum -y install postgresql-server

# Just in case someone forgot to return to home
cd /root
mkdir -vp /root/original

# Add the modules BugStation is going to need

yum -y install openssl-perl
yum -y install perl-AppConfig
yum -y install perl-GD
yum -y install perl-MIME-tools
yum -y install perl-XML-Parser
yum -y install perl-GDGraph
yum -y install perl-XML-Twig
yum -y install graphviz
yum -y install perl-Chart
yum -y install cvs
yum -y install rcs
yum -y install perl-HTML-Parser
yum -y install patchutils
yum -y install perl-LDAP

yum -y install perl-Template-GD
yum -y install perl-PatchReader
yum -y install perl-Net-SSLeay
yum -y install perl-Algorithm-Diff
yum -y install perl-Text-Diff
yum -y install ImageMagick-perl
yum -y install perl-HTML-Scrubber
yum -y install perl-Template-Toolkit
yum -y install perl-Email-Send
yum -y install perl-Email-MIME-Modifier
yum -y install perl-Email-MIME-Attachment-Stripper
yum -y install perl-SOAP-Lite
yum -y install perl-Email-Reply
yum -y install perl-ExtUtils-MakeMaker
yum -y install perl-Digest-SHA
yum -y install perl-DateTime


yum -y install perl-Authen-SASL
yum -y install perl-Authen-Radius

yum -y install perl-JSON
yum -y install perl-Text-CSV

yum -y install openldap-clients
#yum -y install openldap-servers

yum -y install mod_dav_svn
yum -y install mod_authz_ldap

#yum -y install viewvc

#yum -y install mediawiki



# Install Webmin
yum -y install wget
yum -y install openssl openssl-devel
cd /root
wget http://prdownloads.sourceforge.net/webadmin/webmin-${WM_VERSION}.noarch.rpm
#wget http://puzzle.dl.sourceforge.net/sourceforge/webadmin/webmin-${WM_VERSION}-1.noarch.rpm
rpm -Uvh webmin-*.rpm

cd /var/www/html
#svn checkout --username anonymous http://svn.bugopolis.com/repos/bugopolis/vendor/bugopolis/bugzilla-testopia-bugzillametrics
#mv bugzilla-testopia-bugzillametrics bugzilla 
svn checkout --username anonymous http://svn.bugopolis.com/repos/bugopolis/vendor/bugopolis/bugzilla
#mv bugzilla-testopia-bugzillametrics bugzilla 



chmod 750 /var/www/html/bugzilla
chown root:apache /var/www/html/bugzilla

######################################################
# Come back here
mkdir /root/original
cp -var /etc/my.cnf /root/original


perl -pi -e "s/^\[mysqld\]$/[mysqld]\nmax_allowed_packet=1M\nft_min_word_len=2/i" /etc/my.cnf
grep ^max /etc/my.cnf


cat <<EOF >/tmp/mysql-script
GRANT ALL PRIVILEGES ON bugs.* TO 'bugs'@'localhost' IDENTIFIED BY 'bugopolis' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF
######################################################

cp -v /var/www/html/bugzilla/configuration/bugzilla.conf /etc/httpd/conf.d

######################################################
yum -y install mysql-server
/sbin/service mysqld start
sleep 15
/usr/bin/mysqladmin -u root password 'bugopolis'
######################################################

yum -y install perl-DBD-Pg
/sbin/service postgresql initdb
/sbin/service postgresql start

su - postgres -c 'echo -e "CREATE ROLE bugs PASSWORD \0047md53bcd5a0a03455230f43345fc014793c5\0047 NOSUPERUSER CREATEDB NOCREATEROLE INHERIT LOGIN;" | psql'


#echo "host all bugs 127.0.0.1/32 md5" >> /var/lib/pgsql/data/pg_hba.conf

cp /var/lib/pgsql/data/pg_hba.conf /root/original
perl -pi -e "s/^host.+127.+sameuser$/host all bugs 127.0.0.1\/32 md5\nhost    all         all         127.0.0.1\/32          ident sameuser/i" /var/lib/pgsql/data/pg_hba.conf
cat /var/lib/pgsql/data/pg_hba.conf

/sbin/service postgresql stop
/sbin/service postgresql start

cd /var/www/html/bugzilla

# pretty draconian policies going on, turn them off for the time being
setenforce 0

./checksetup.pl

perl -pi -e "s/db_driver = 'mysql'/db_driver ='Pg'/i" /var/www/html/bugzilla/localconfig
perl -pi -e "s/db_pass = ''/db_pass ='bugopolis'/i" /var/www/html/bugzilla/localconfig
fgrep db_driver /var/www/html/bugzilla/localconfig
fgrep db_pass /var/www/html/bugzilla/localconfig

#mysql -u root --password=bugopolis mysql < /tmp/mysql-script

./checksetup.pl

# Add cron jobs
/sbin/service crond stop
cp -v /var/www/html/bugzilla/configuration/bugzilla.cron /etc/cron.d/bugzilla

# Get the latest version of shorewall
cd /root
yum -y install shorewall

yum -y remove krb5-devel

/sbin/chkconfig --level 345 anacron off
/sbin/chkconfig --level 345 rawdevices off
/sbin/chkconfig --level 345 gpm off
/sbin/chkconfig --level 345 netfs off
/sbin/chkconfig --level 345 nfslock off
/sbin/chkconfig --level 345 portmap off
/sbin/chkconfig --level 345 xinetd off
/sbin/chkconfig --level 345 kudzu off
/sbin/chkconfig --level 345 mdmonitor off
/sbin/chkconfig --level 345 mdmpd off
/sbin/chkconfig --level 345 pcscd off
/sbin/chkconfig --level 345 rhnsd off
/sbin/chkconfig --level 345 rpcsvcgssd off
/sbin/chkconfig --level 345 rpcidmapd off
/sbin/chkconfig --level 345 rpcgssd off
/sbin/chkconfig --level 345 xfs off
/sbin/chkconfig --level 345 yum-updatesd off
/sbin/chkconfig --level 345 mysqld off
/sbin/chkconfig --level 345 smartd off
/sbin/chkconfig --level 345 ldap off

/sbin/chkconfig --level 345 fuse off
/sbin/chkconfig --level 345 cups off
/sbin/chkconfig --level 345 avahi-daemon off
/sbin/chkconfig --level 345 atd off
/sbin/chkconfig --level 345 rpcbind off

/sbin/chkconfig --level 345 postfix on
/sbin/chkconfig --level 345 webmin on
/sbin/chkconfig --level 345 shorewall on
/sbin/chkconfig --level 345 postgresql on
/sbin/chkconfig --level 345 iptables on
/sbin/chkconfig --level 345 ntpd on
/sbin/chkconfig --level 345 httpd on
/sbin/chkconfig --level 345 lm_sensors on

/sbin/service ntpd stop
ntpdate 0.pool.ntp.org
#ntpdate -u 128.101.101.101
/sbin/service ntpd start

# Clean up some files
yum clean all

# setup the backup directory
mkdir -vp /var/backup/rdiff-backup
mkdir -vp /var/backup/www

#/etc/cron.daily/mlocate.cron
updatedb
fixfiles -Ff relabel

if [ "$HAS_RAID" == 1 ]; then
    yum -y install smartmontools
    /sbin/chkconfig --level 345 smartd on
    echo "/dev/twe0 -a -d 3ware,0 -a -m ${ADMIN_EMAIL}" > /etc/smartd.conf
    echo "/dev/twe0 -a -d 3ware,1 -a -m ${ADMIN_EMAIL}" >> /etc/smartd.conf
fi

mkdir -vp /root/original
cp -vp /etc/sysconfig/network /root/original
perl -pi -e "s/^HOSTNAME=localhost.localdomain/HOSTNAME=${HOST_NAME}/" /etc/sysconfig/network
perl -pi -e "s/^HOSTNAME=localhost/HOSTNAME=${HOST_NAME}/" /etc/sysconfig/network
fgrep HOSTNAME /etc/sysconfig/network

cp -vp /etc/hosts /root/original
#perl -pi -e "s/localhost.localdomain/${HOST_NAME} localhost.localdomain/" /etc/hosts
cat "${EXTERNAL_IP}     ${HOST_NAME}" >> /etc/hosts
cat /etc/hosts

cp -vp /etc/httpd/conf/httpd.conf /root/original
perl -pi -e "s/#ServerName www.example.com:80/ServerName ${HOST_NAME}:80/" /etc/httpd/conf/httpd.conf
fgrep ServerName /etc/httpd/conf/httpd.conf

perl -pi -e "s/^ServerAdmin root\@localhost/ServerAdmin ${ADMIN_EMAIL}/" /etc/httpd/conf/httpd.conf
fgrep ServerAdmin /etc/httpd/conf/httpd.conf

perl -pi -e "s/^#NameVirtualHost \*:80$/NameVirtualHost *:80/i" /etc/httpd/conf/httpd.conf
fgrep NameVirtualHost /etc/httpd/conf/httpd.conf

perl -pi -e "s/ServerName bugzilla.tryggth.com/ServerName ${HOST_NAME}/" /etc/httpd/conf.d/bugzilla.conf
fgrep ServerName /etc/httpd/conf.d/bugzilla.conf


# setup postfix alias

perl -pi -e "s/^alias_maps = hash:\/etc\/aliases/alias_maps = hash:\/etc\/aliases,hash:\/etc\/bugzilla.aliases/i" /etc/postfix/main.cf
fgrep bugzilla /etc/postfix/main.cf
cp -v /var/www/html/bugzilla/configuration/bugzilla.aliases /etc/bugzilla.aliases
# Need to figure out what permissions to set on this file
chown apache:apache /etc/bugzilla.aliases

perl -pi -e "s/^#inet_interfaces = all/inet_interfaces = all/i" /etc/postfix/main.cf
perl -pi -e "s/^inet_interfaces = localhost/#inet_interfaces = localhost/i" /etc/postfix/main.cf
grep inet_interfaces /etc/postfix/main.cf


cp /etc/httpd/conf.d/ssl.conf /root/original
sed '/<VirtualHost _default_:443>/ r /var/www/html/bugzilla/configuration/ssl.conf.add' </root/original/ssl.conf >/etc/httpd/conf.d/ssl.conf

# delete the extra kernels

# Configure firewall
mkdir -vp /root/original
cp -v /etc/shorewall/shorewall.conf /root/original
perl -pi -e "s/^IPTABLES=$/IPTABLES=\/sbin\/iptables/" /etc/shorewall/shorewall.conf
grep ^IPTABLES= /etc/shorewall/shorewall.conf
perl -pi -e "s/^STARTUP_ENABLED=No/STARTUP_ENABLED=Yes/" /etc/shorewall/shorewall.conf
grep ^STARTUP_ENABLED= /etc/shorewall/shorewall.conf
# Configure firewall
cp -var /etc/shorewall /root/original
cd /etc/shorewall
patch -p0 -i /var/www/html/bugzilla/configuration/shorewall.diff


/usr/bin/rdiff-backup  --print-statistics --exclude-device-files --exclude '/var/backup' --exclude '/proc' --exclude '/dev' --exclude '/sys' --exclude '/selinux' --exclude '/tmp' --exclude '/mnt' --exclude '/var/log' / /var/backup/rdiff-backup


# delete the extra kernels

# Do some server hardening
# Configure firewall
# Setup IP addresses (DNS, gateway, netmask)
# Configure sendmail 
# Configure timezone on server
# set bugzilla maintainer, initial URL

# add jwalters user - change to no root login, change check against certificate login

# change password
echo "Change the password"
echo "Get the new kernel"
echo "Do some server hardening"
echo "Configure firewall"
echo "Setup IP addresses (DNS, gateway, netmask)"

# Timezone can now be set in webmin
#echo "Configure timezone on server"
echo "Set bugzilla maintainer, initial URL"



yum -y install phpldapadmin
# need to configure
perl -pi -e "s/127.0.0.1/all/i" /etc/httpd/conf.d/phpldapadmin.conf
fgrep Allow /etc/httpd/conf.d/phpldapadmin.conf

cd /etc/phpldapadmin
cp config.php /root/original
# fix the spelling error below
patch -p0 < /var/www/html/bugzilla/configuration/integration/phpldapdmin.config.php.patch
chmod 644 config.php
fgrep bugopolis config.php

/sbin/service httpd restart

# This unnecessary since the patch is applied to source already
#yum -y install patch
#cp /var/www/html/bugzilla/configuration/integration/bugzilla-3.0.patch /var/www/html/bugzilla
#cd /var/www/html/bugzilla
#patch -p0 < bugzilla-3.0.patch

yum -y install perl-LDAP

cp /etc/aliases /root/original
cat /var/www/html/bugzilla/configuration/integration/aliases >> /etc/aliases

# This unnecessary since the patch is applied to source already
#cp /var/www/html/bugzilla/configuration/integration/bugzilla-3.0-password.patch /var/www/html/bugzilla
#cd /var/www/html/bugzilla
#patch -p0 < bugzilla-3.0-password.patch

#echo "support-auto: bugzilla-daemon" >> /etc/aliases
#echo "bugzilla-daemon: |/var/www/html/bugzilla/configuration/integration/email_in.sh" >> /etc/aliases
#echo
## need to rebuild aliases file

mysql --user=root --password=bugopolis mysql < /var/www/html/bugzilla/configuration/integration/customer_bug.sql


# deal with openldap
#suffix          "dc=ldap,dc=bugopolis,dc=com"
#rootdn          "cn=Manager,dc=ldap,dc=bugopolis,dc=com"

cp /etc/openldap/slapd.conf /root/original
perl -pi -e 's/^(suffix.*").*"$/\1dc=ldap,dc=bugopolis,dc=com"/i' /etc/openldap/slapd.conf
grep ^suffix /etc/openldap/slapd.conf

perl -pi -e 's/^(rootdn.*").*"$/\1cn=Manager,dc=ldap,dc=bugopolis,dc=com"/i' /etc/openldap/slapd.conf
grep ^rootdn /etc/openldap/slapd.conf

perl -pi -e "s/^# rootpw(.*)secret/rootpw\1secret/i" /etc/openldap/slapd.conf
fgrep rootpw /etc/openldap/slapd.conf

/sbin/service ldap restart
sleep 10
ldapadd -x -D "cn=Manager,dc=ldap,dc=bugopolis,dc=com" -w secret -f /var/www/html/bugzilla/configuration/integration/ldap.ldif
ldapadd -x -D "cn=Manager,dc=ldap,dc=bugopolis,dc=com" -w secret -f /var/www/html/bugzilla/configuration/integration/customer_user.ldif

touch /var/log/bugzilla-email-{in,out}.log
chmod 0666 /var/log/bugzilla-email-{in,out}.log

#echo "customer: |/var/www/html/bugzilla/configuration/integration/email_out.sh" >> /etc/aliases


svnadmin create --fs-type=fsfs /var/lib/svnroot


cp -va /var/www/html/bugzilla/configuration/integration/svn_bz_append.pl /usr/bin
cp -va /var/www/html/bugzilla/configuration/integration/post-commit /var/lib/svnroot/hooks/
# the following may not be necessary
chmod 0755 /var/lib/svnroot/hooks/post-commit
touch /var/log/svn-bz-commits.log
chmod 0666 /var/log/svn-bz-commits.log

cp /etc/viewvc/viewvc.conf /root/original
perl -pi -e "s/^cvs_roots/#cvs_roots/i" /etc/viewvc/viewvc.conf
grep cvs_roots /etc/viewvc/viewvc.conf

perl -pi -e "s/^#svn_roots(.+)(\/home\/svnrepos)/svn_roots\1\/var\/lib\/svnroot/i" /etc/viewvc/viewvc.conf
grep svn_roots /etc/viewvc/viewvc.conf

perl -pi -e "s/^default_root = cvs/default_root = svnroot/i" /etc/viewvc/viewvc.conf
grep default_root /etc/viewvc/viewvc.conf


cd /usr/lib/python2.4/site-packages/viewvc/lib
cp /var/www/html/bugzilla/configuration/integration/xref.py .
cp /usr/lib/python2.4/site-packages/viewvc/lib/viewvc.py /root/original
patch -p1 < /var/www/html/bugzilla/configuration/integration/viewvc-1.0.4.patch


cp /var/www/html/bugzilla/configuration/integration/LdapAuthentication.php /var/www/mediawiki/includes

cd /var/www/mediawiki/includes
patch -p2 < /var/www/html/bugzilla/configuration/integration/mediawiki-1.8.4.patch


cat <<EOF >/tmp/mysql-script-1
GRANT ALL PRIVILEGES ON wikidb.* TO 'wikiuser'@'localhost' IDENTIFIED BY 'bugopolis' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF

mysql -u root --password=bugopolis mysql < /tmp/mysql-script-1

perl -pi -e "s/127.0.0.1/all/i" /etc/httpd/conf.d/mediawiki.conf
fgrep Allow /etc/httpd/conf.d/mediawiki.conf

/sbin/service httpd restart

# install mediawiki via the web
# modify LocalSettings.php

cd /var/www/mediawiki/includes
patch -p2 < /var/www/html/bugzilla/configuration/integration/mediawiki-ldap-1.6.9.patch
# This doesn't seem to be necessary... but I don't know why
#patch -p1 < /var/www/html/bugzilla/configuration/integration/mediawiki-ldap-1.6.9-2.patch

cp -va /var/www/mediawiki/config/LocalSettings.php /var/www/mediawiki
# LocalSettings.php settings to LocalSettings.php

# Configure Mediawiki








=======
#!/bin/bash

#  TODO -
##   Setup new versions (environment variables)
##   make perl replacements more robust
##   move static standalone files into configuration directory (bugzilla.conf, etc)
##   finish off some of the TODO items at the bottom of the file
##   setup to use Bugopolis repository

# Need to conditionalize this based on whether its in a virtual machine
#/sbin/hdparm -c1d1X69 /dev/hda

# These need to be turned off for a bunch of reasons
unalias -a
/usr/sbin/setenforce 0
iptables --flush
/sbin/service iptables stop
/usr/bin/system-config-securitylevel-tui --quiet --disabled

# Check on the latest version of rdiff-backup from DAG
# Check latest version of Template Toolkit
# Check latest version of Net_SSLeay
# Check latest version of Webmin
export WM_VERSION=1.410-1
export HOST_NAME=waterbug.hydropoint.com
export ADMIN_EMAIL="bwaltenspiel\@hydropoint.com"

# This seems to just happen
#rpm --import /usr/share/doc/fedora-release-6/RPM-GPG-KEY
#rpm --import /usr/share/doc/fedora-release-6/RPM-GPG-KEY-fedora
#rpm --import /usr/share/doc/fedora-release-6/RPM-GPG-KEY-fedora-extras

# setup the backup directory

###################################################
# add to the repo set the repositories at karan
###################################################

yum -y install rdiff-backup
mkdir -vp /var/backup/rdiff-backup


# First backup
/usr/bin/rdiff-backup  --print-statistics --exclude-device-files --exclude '/var/backup' --exclude '/proc' --exclude '/dev' --exclude '/sys' --exclude '/selinux' --exclude '/tmp' --exclude '/mnt' --exclude '/var/log' / /var/backup/rdiff-backup

# Remove the stuff we don't want
yum "${AUTO_REMOVE}" -y remove GConf
yum "${AUTO_REMOVE}" -y remove Glide3
yum "${AUTO_REMOVE}" -y remove ImageMagick
yum "${AUTO_REMOVE}" -y remove Maelstrom
yum "${AUTO_REMOVE}" -y remove ORBit
yum "${AUTO_REMOVE}" -y remove ORBit2
yum "${AUTO_REMOVE}" -y remove Omni
yum "${AUTO_REMOVE}" -y remove Xaw3d
yum "${AUTO_REMOVE}" -y remove a2ps
yum "${AUTO_REMOVE}" -y remove alsa-lib
yum "${AUTO_REMOVE}" -y remove alsa-utils
yum "${AUTO_REMOVE}" -y remove ant
yum "${AUTO_REMOVE}" -y remove ant-core
yum "${AUTO_REMOVE}" -y remove apmd
yum "${AUTO_REMOVE}" -y remove avahi
yum "${AUTO_REMOVE}" -y remove avahi-glib
yum "${AUTO_REMOVE}" -y remove ppp
yum "${AUTO_REMOVE}" -y remove atk
yum "${AUTO_REMOVE}" -y remove atk-devel
yum "${AUTO_REMOVE}" -y remove audiofile
yum "${AUTO_REMOVE}" -y remove aumix
yum "${AUTO_REMOVE}" -y remove autofs
yum "${AUTO_REMOVE}" -y remove bc
yum "${AUTO_REMOVE}" -y remove bind
yum "${AUTO_REMOVE}" -y remove bison
yum "${AUTO_REMOVE}" -y remove bluez-bluefw
yum "${AUTO_REMOVE}" -y remove bluez-hcidump
yum "${AUTO_REMOVE}" -y remove bluez-libs
yum "${AUTO_REMOVE}" -y remove bluez-utils
yum "${AUTO_REMOVE}" -y remove boost-devel
yum "${AUTO_REMOVE}" -y remove byacc
yum "${AUTO_REMOVE}" -y remove bzip2-devel
yum "${AUTO_REMOVE}" -y remove cadaver
yum "${AUTO_REMOVE}" -y remove cdecl
yum "${AUTO_REMOVE}" -y remove cdlabelgen
yum "${AUTO_REMOVE}" -y remove cdp
yum "${AUTO_REMOVE}" -y remove cdparanoia
yum "${AUTO_REMOVE}" -y remove cdparanoia-libs
yum "${AUTO_REMOVE}" -y remove cdrecord
yum "${AUTO_REMOVE}" -y remove chromium
yum "${AUTO_REMOVE}" -y remove ckermit
yum "${AUTO_REMOVE}" -y remove commons-beanutils
yum "${AUTO_REMOVE}" -y remove commons-collections
yum "${AUTO_REMOVE}" -y remove commons-digester
yum "${AUTO_REMOVE}" -y remove commons-logging
yum "${AUTO_REMOVE}" -y remove commons-modeler
yum "${AUTO_REMOVE}" -y remove cscope
yum "${AUTO_REMOVE}" -y remove cups-libs
yum "${AUTO_REMOVE}" -y remove curl-devel
yum "${AUTO_REMOVE}" -y remove cyrus-sasl-devel
yum "${AUTO_REMOVE}" -y remove db4-devel
yum "${AUTO_REMOVE}" -y remove desktop-backgrounds-basic
yum "${AUTO_REMOVE}" -y remove desktop-backgrounds-extra
yum "${AUTO_REMOVE}" -y remove docbook-dtds
yum "${AUTO_REMOVE}" -y remove docbook-style-dsssl
yum "${AUTO_REMOVE}" -y remove docbook-style-xsl
yum "${AUTO_REMOVE}" -y remove elinks
yum "${AUTO_REMOVE}" -y remove esound
yum "${AUTO_REMOVE}" -y remove ethereal
yum "${AUTO_REMOVE}" -y remove evolution
yum "${AUTO_REMOVE}" -y remove expat-devel
yum "${AUTO_REMOVE}" -y remove festival
yum "${AUTO_REMOVE}" -y remove fetchmail
yum "${AUTO_REMOVE}" -y remove finger
yum "${AUTO_REMOVE}" -y remove flex
yum "${AUTO_REMOVE}" -y remove fontconfig-devel
yum "${AUTO_REMOVE}" -y remove foomatic
yum "${AUTO_REMOVE}" -y remove freeglut
yum "${AUTO_REMOVE}" -y remove freetype-devel
yum "${AUTO_REMOVE}" -y remove ftp
yum "${AUTO_REMOVE}" -y remove gaim
yum "${AUTO_REMOVE}" -y remove gcc
yum "${AUTO_REMOVE}" -y remove gcc-java
yum "${AUTO_REMOVE}" -y remove gdb
yum "${AUTO_REMOVE}" -y remove gdbm-devel
yum "${AUTO_REMOVE}" -y remove glib2-devel
yum "${AUTO_REMOVE}" -y remove glibc-devel
yum "${AUTO_REMOVE}" -y remove gmp-devel
yum "${AUTO_REMOVE}" -y remove gnome-audio
yum "${AUTO_REMOVE}" -y remove gnome-mime-data
yum "${AUTO_REMOVE}" -y remove gnome-pilot
yum "${AUTO_REMOVE}" -y remove gphoto2
yum "${AUTO_REMOVE}" -y remove gpm-devel
yum "${AUTO_REMOVE}" -y remove gstreamer
yum "${AUTO_REMOVE}" -y remove gtk+
yum "${AUTO_REMOVE}" -y remove gtk-engines
yum "${AUTO_REMOVE}" -y remove gtk2
yum "${AUTO_REMOVE}" -y remove gtk2-devel
yum "${AUTO_REMOVE}" -y remove hesiod-devel
yum "${AUTO_REMOVE}" -y remove hicolor-icon-theme
yum "${AUTO_REMOVE}" -y remove htmlview
yum "${AUTO_REMOVE}" -y remove howl
yum "${AUTO_REMOVE}" -y remove httpd-manual
yum "${AUTO_REMOVE}" -y remove hwcrypto
yum "${AUTO_REMOVE}" -y remove iiimf-client-lib
yum "${AUTO_REMOVE}" -y remove iiimf-client-lib-devel
yum "${AUTO_REMOVE}" -y remove iiimf-libs-devel
yum "${AUTO_REMOVE}" -y remove iiimf-protocol-lib
yum "${AUTO_REMOVE}" -y remove iiimf-protocol-lib-devel
yum "${AUTO_REMOVE}" -y remove indent
yum "${AUTO_REMOVE}" -y remove irda-utils
yum "${AUTO_REMOVE}" -y remove isdn4k-utils
yum "${AUTO_REMOVE}" -y remove jaf
yum "${AUTO_REMOVE}" -y remove javamail
yum "${AUTO_REMOVE}" -y remove jpackage-utils
yum "${AUTO_REMOVE}" -y remove junit 
yum "${AUTO_REMOVE}" -y remove jwhois
yum "${AUTO_REMOVE}" -y remove kernel-headers
yum "${AUTO_REMOVE}" -y remove kernel-pcmcia-cs
yum "${AUTO_REMOVE}" -y remove kernel-source
yum "${AUTO_REMOVE}" -y remove krb5-devel
yum "${AUTO_REMOVE}" -y remove krbafs-devel
yum "${AUTO_REMOVE}" -y remove kudzu-devel
yum "${AUTO_REMOVE}" -y remove lftp
yum "${AUTO_REMOVE}" -y remove libacl-devel
yum "${AUTO_REMOVE}" -y remove libao
yum "${AUTO_REMOVE}" -y remove libart_lgpl
yum "${AUTO_REMOVE}" -y remove libattr-devel
yum "${AUTO_REMOVE}" -y remove libbonobo
yum "${AUTO_REMOVE}" -y remove libcap-devel
yum "${AUTO_REMOVE}" -y remove libdv
yum "${AUTO_REMOVE}" -y remove libf2c
yum "${AUTO_REMOVE}" -y remove libgfortran
yum "${AUTO_REMOVE}" -y remove libgcj
yum "${AUTO_REMOVE}" -y remove libgcj-devel
yum "${AUTO_REMOVE}" -y remove libgcj34
yum "${AUTO_REMOVE}" -y remove libgcj34-devel
yum "${AUTO_REMOVE}" -y remove libgnat
yum "${AUTO_REMOVE}" -y remove libjpeg-devel
yum "${AUTO_REMOVE}" -y remove libmng-devel
yum "${AUTO_REMOVE}" -y remove libmusicbrainz
yum "${AUTO_REMOVE}" -y remove libogg
yum "${AUTO_REMOVE}" -y remove libogg-devel
yum "${AUTO_REMOVE}" -y remove libselinux-devel
yum "${AUTO_REMOVE}" -y remove libstdc++-devel
yum "${AUTO_REMOVE}" -y remove libtermcap-devel
yum "${AUTO_REMOVE}" -y remove libusb-devel
yum "${AUTO_REMOVE}" -y remove libuser-devel
yum "${AUTO_REMOVE}" -y remove libvorbis-devel
yum "${AUTO_REMOVE}" -y remove libwvstreams
yum "${AUTO_REMOVE}" -y remove libxml2-devel
yum "${AUTO_REMOVE}" -y remove libxslt
yum "${AUTO_REMOVE}" -y remove linc
yum "${AUTO_REMOVE}" -y remove lockdev-devel
yum "${AUTO_REMOVE}" -y remove lrzsz
yum "${AUTO_REMOVE}" -y remove lsof 
yum "${AUTO_REMOVE}" -y remove ltrace
yum "${AUTO_REMOVE}" -y remove mikmod
yum "${AUTO_REMOVE}" -y remove minicom
yum "${AUTO_REMOVE}" -y remove mozilla
yum "${AUTO_REMOVE}" -y remove mtr
yum "${AUTO_REMOVE}" -y remove mutt
yum "${AUTO_REMOVE}" -y remove mx4j
yum "${AUTO_REMOVE}" -y remove nautilus
yum "${AUTO_REMOVE}" -y remove nautilus-media
yum "${AUTO_REMOVE}" -y remove nc
yum "${AUTO_REMOVE}" -y remove ncurses-devel
yum "${AUTO_REMOVE}" -y remove netdump
yum "${AUTO_REMOVE}" -y remove newt-devel
yum "${AUTO_REMOVE}" -y remove nfs-utils
yum "${AUTO_REMOVE}" -y remove nmap
yum "${AUTO_REMOVE}" -y remove openjade
yum "${AUTO_REMOVE}" -y remove openldap-clients
yum "${AUTO_REMOVE}" -y remove openldap-devel
yum "${AUTO_REMOVE}" -y remove openmotif
yum "${AUTO_REMOVE}" -y remove openoffice.org
yum "${AUTO_REMOVE}" -y remove openoffice.org-i18n
yum "${AUTO_REMOVE}" -y remove openoffice.org-libs
yum "${AUTO_REMOVE}" -y remove openssh-askpass
yum "${AUTO_REMOVE}" -y remove openssl-devel
yum "${AUTO_REMOVE}" -y remove mod_python
yum "${AUTO_REMOVE}" -y remove pam-devel
yum "${AUTO_REMOVE}" -y remove pango-devel
yum "${AUTO_REMOVE}" -y remove pciutils-devel
yum "${AUTO_REMOVE}" -y remove pcmcia-cs 
yum "${AUTO_REMOVE}" -y remove pcmciautils
yum "${AUTO_REMOVE}" -y remove perl-SGMLSpm
yum "${AUTO_REMOVE}" -y remove php
yum "${AUTO_REMOVE}" -y remove php-ldap
yum "${AUTO_REMOVE}" -y remove pilot-link
yum "${AUTO_REMOVE}" -y remove pnm2ppa
yum "${AUTO_REMOVE}" -y remove pstack
yum "${AUTO_REMOVE}" -y remove psutils
yum "${AUTO_REMOVE}" -y remove pyorbit
yum "${AUTO_REMOVE}" -y remove python-devel
yum "${AUTO_REMOVE}" -y remove qt
yum "${AUTO_REMOVE}" -y remove qt-devel
yum "${AUTO_REMOVE}" -y remove rdist
yum "${AUTO_REMOVE}" -y remove readline-devel
yum "${AUTO_REMOVE}" -y remove redhat-artwork
yum "${AUTO_REMOVE}" -y remove redhat-menus
yum "${AUTO_REMOVE}" -y remove rpm-build
yum "${AUTO_REMOVE}" -y remove rpm-devel
yum "${AUTO_REMOVE}" -y remove rsh
yum "${AUTO_REMOVE}" -y remove samba-common
yum "${AUTO_REMOVE}" -y remove sane-backends
yum "${AUTO_REMOVE}" -y remove slang-devel
yum "${AUTO_REMOVE}" -y remove slrn
yum "${AUTO_REMOVE}" -y remove sox
yum "${AUTO_REMOVE}" -y remove speex
yum "${AUTO_REMOVE}" -y remove splint
yum "${AUTO_REMOVE}" -y remove squid
yum "${AUTO_REMOVE}" -y remove squid
yum "${AUTO_REMOVE}" -y remove strace
yum "${AUTO_REMOVE}" -y remove stunnel
yum "${AUTO_REMOVE}" -y remove switchdesk
yum "${AUTO_REMOVE}" -y remove synaptics
yum "${AUTO_REMOVE}" -y remove system-config-soundcard
yum "${AUTO_REMOVE}" -y remove talk
yum "${AUTO_REMOVE}" -y remove tcl
yum "${AUTO_REMOVE}" -y remove tcpdump
yum "${AUTO_REMOVE}" -y remove telnet
yum "${AUTO_REMOVE}" -y remove tetex
yum "${AUTO_REMOVE}" -y remove tetex-fonts
yum "${AUTO_REMOVE}" -y remove texinfo
yum "${AUTO_REMOVE}" -y remove traceroute
yum "${AUTO_REMOVE}" -y remove ttfprint
yum "${AUTO_REMOVE}" -y remove tux
yum "${AUTO_REMOVE}" -y remove tuxracer
yum "${AUTO_REMOVE}" -y remove up2date
yum "${AUTO_REMOVE}" -y remove valgrind
yum "${AUTO_REMOVE}" -y remove vnc
yum "${AUTO_REMOVE}" -y remove vnc-server
yum "${AUTO_REMOVE}" -y remove wvdial
yum "${AUTO_REMOVE}" -y remove xchat
yum "${AUTO_REMOVE}" -y remove xfs
yum "${AUTO_REMOVE}" -y remove xloadimage
yum "${AUTO_REMOVE}" -y remove xorg-x11-devel
yum "${AUTO_REMOVE}" -y remove xorg-x11-xfs
yum "${AUTO_REMOVE}" -y remove xrestop
yum "${AUTO_REMOVE}" -y remove xterm
yum "${AUTO_REMOVE}" -y remove wpa_supplicant
yum "${AUTO_REMOVE}" -y remove yp-tools
yum "${AUTO_REMOVE}" -y remove ypbind
yum "${AUTO_REMOVE}" -y remove zisofs-tools

# Second backup
/usr/bin/rdiff-backup  --print-statistics --exclude-device-files --exclude '/var/backup' --exclude '/proc' --exclude '/dev' --exclude '/sys' --exclude '/selinux' --exclude '/tmp' --exclude '/mnt' --exclude '/var/log' / /var/backup/rdiff-backup

# upgrade the now current set of installed packages
yum  -y upgrade

yum -y install nano
yum -y install which
yum -y install sed
yum -y install vim-enhanced
yum -y install slocate
yum -y install mailx
yum -y install ntp
yum -y install perl
yum -y remove sendmail sendmail-cf
yum -y install postfix
yum -y install mdadm
yum -y install kernel

# Only do this block on servers (Bugstations) we are going to ship, not Bugzones or trials
# install the selinux stuff as described here: http://people.redhat.com/kwade/fedora-docs/selinux-faq-en/
yum -y install policycoreutils selinux-policy-targeted selinux-policy-strict
# May have to change this if target enforcement is a problem
perl -pi -e "s/^SELINUX=enforcing/SELINUX=disabled/i" /etc/selinux/config
perl -pi -e "s/^SELINUX=permissive/SELINUX=disabled/i" /etc/selinux/config
cat /etc/selinux/config

# make sure we come back up in multi-user no-GUI mode
perl -pi -e "s/^id:5:initdefault:/id:3:initdefault:/i" /etc/inittab
fgrep initdefault /etc/inittab

yum -y install openssl-devel
yum -y install zlib-devel
yum -y install subversion
yum -y install httpd
yum -y install mod_ssl

# Just in case someone forgot to return to home
cd /root
mkdir -vp /root/original

# Add the modules BugStation is going to need

yum -y install which
yum -y install openssl-perl
yum -y install mysql-server
yum -y install perl-AppConfig
yum -y install perl-GD
yum -y install perl-MIME-tools
yum -y install perl-XML-Parser
yum -y install perl-GDGraph
yum -y install perl-XML-Twig
yum -y install graphviz
yum -y install perl-Chart
yum -y install cvs
yum -y install rcs
yum -y install perl-HTML-Parser
yum -y install patchutils
yum -y install perl-LDAP

yum -y install perl-Template-GD
yum -y install perl-PatchReader
yum -y install perl-Net-SSLeay
yum -y install perl-Algorithm-Diff
yum -y install perl-Text-Diff
yum -y install ImageMagick-perl
yum -y install perl-HTML-Scrubber
yum -y install perl-Template-Toolkit
yum -y install perl-Email-Send
yum -y install perl-Email-MIME-Modifier
yum -y install perl-Email-MIME-Attachment-Stripper
yum -y install perl-SOAP-Lite
yum -y install perl-Email-Reply

yum -y install openldap-clients
yum -y install openldap-servers

yum -y install mod_dav_svn
yum -y install mod_authz_ldap

yum -y install viewvc

yum -y install mediawiki



# Install Webmin
yum -y install openssl openssl-devel
cd /root
wget http://prdownloads.sourceforge.net/webadmin/webmin-${WM_VERSION}.noarch.rpm
#wget http://puzzle.dl.sourceforge.net/sourceforge/webadmin/webmin-${WM_VERSION}-1.noarch.rpm
rpm -Uvh webmin-*.rpm

cd /var/www/html
svn checkout --username anonymous http://svn.bugopolis.com/repos/bugopolis/vendor/bugopolis/bugzilla

chmod 750 /var/www/html/bugzilla
chown root:apache /var/www/html/bugzilla

# Come back here
mkdir /root/original
cp -var /etc/my.cnf /root/original

perl -pi -e "s/^\[mysqld\]$/[mysqld]\nmax_allowed_packet=1M\nft_min_word_len=2/i" /etc/my.cnf
grep ^max /etc/my.cnf


cat <<EOF >/tmp/mysql-script
GRANT ALL PRIVILEGES ON bugs.* TO 'bugs'@'localhost' IDENTIFIED BY 'bugopolis' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF

cp -v /var/www/html/bugzilla/configuration/bugzilla.conf /etc/httpd/conf.d

yum -y install mysql-server
/sbin/service mysqld start
sleep 15
/usr/bin/mysqladmin -u root password 'bugopolis'

cd /var/www/html/bugzilla

# pretty draconian policies going on, turn them off for the time being
setenforce 0

./checksetup.pl

perl -pi -e "s/db_pass = ''/db_pass ='bugopolis'/i" /var/www/html/bugzilla/localconfig
mysql -u root --password=bugopolis mysql < /tmp/mysql-script


./checksetup.pl

# Add cron jobs
/sbin/service crond stop
cp -v /var/www/html/bugzilla/configuration/bugzilla.cron /etc/cron.d/bugzilla

# Get the latest version of shorewall
cd /root
yum -y install shorewall

yum -y remove lsof cpp gcc krb5-devel

/sbin/chkconfig --level 345 rawdevices off
/sbin/chkconfig --level 345 gpm off
/sbin/chkconfig --level 345 netfs off
/sbin/chkconfig --level 345 nfslock off
/sbin/chkconfig --level 345 portmap off
/sbin/chkconfig --level 345 xinetd off
/sbin/chkconfig --level 345 kudzu off
/sbin/chkconfig --level 345 mdmonitor off
/sbin/chkconfig --level 345 mdmpd off
/sbin/chkconfig --level 345 pcscd off
/sbin/chkconfig --level 345 rhnsd off
/sbin/chkconfig --level 345 rpcsvcgssd off
/sbin/chkconfig --level 345 rpcidmapd off
/sbin/chkconfig --level 345 rpcgssd off
/sbin/chkconfig --level 345 xfs off
/sbin/chkconfig --level 345 yum "${AUTO_REMOVE}"-updatesd off

/sbin/chkconfig --level 345 avahi-daemon off
/sbin/chkconfig --level 345 atd off
/sbin/chkconfig --level 345 yum "${AUTO_REMOVE}"-updatesd off


/sbin/chkconfig --level 345 postfix on
/sbin/chkconfig --level 345 webmin on
/sbin/chkconfig --level 345 shorewall on
/sbin/chkconfig --level 345 mysqld on
/sbin/chkconfig --level 345 iptables on
/sbin/chkconfig --level 345 ntpd on
/sbin/chkconfig --level 345 httpd on
/sbin/chkconfig --level 345 ldap on


# Need to revamp this
#cd /root
#cp -va /etc/ntp.conf /root/original
## TODO: Fix this - it does two inserts
#perl -pi -e "s/^# restrict 192.168.1.0 mask 255.255.255.0 nomodify notrap$/# restrict 192.168.1.0 mask 255.255.255.0 nomodify notrap\nrestrict 128.101.101.101 mask 255.255.255.255 nomodify notrap noquery\nrestrict 199.240.130.1 mask 255.255.255.255 nomodify notrap noquery\nrestrict 216.204.156.2 mask 255.255.255.255 nomodify notrap noquery/i" /etc/ntp.conf
#
#perl -pi -e "s/^server 0.pool.ntp.org$/#server 0.pool.ntp.org/" /etc/ntp.conf
#perl -pi -e "s/^server 1.pool.ntp.org$/#server 1.pool.ntp.org/" /etc/ntp.conf
#perl -pi -e "s/^server 2.pool.ntp.org$/#server 2.pool.ntp.org\nserver 128.101.101.101\nserver 199.240.130.1\nserver 216.204.156.2/i" /etc/ntp.conf
#cat /etc/ntp.conf

ntpdate 0.pool.ntp.org
#ntpdate -u 128.101.101.101
/sbin/service ntpd start

# add bugmail user 
#useradd -m -G apache -s /sbin/nologin bugmail
#cp /var/www/html/bugzilla/contrib/bugzilla.procmailrc /home/bugmail/.procmailrc
#chmod 644 /home/bugmail/.procmailrc

# Clean up some files
yum clean all

# setup the backup directory
mkdir -vp /var/backup/rdiff-backup
mkdir -vp /var/backup/www

#/etc/cron.daily/mlocate.cron
updatedb
fixfiles -Ff relabel

if [ "$HAS_RAID" == 1 ]; then
    yum -y install smartmontools
    /sbin/chkconfig --level 345 smartd on
    echo "/dev/twe0 -a -d 3ware,0 -a -m ${ADMIN_EMAIL}" > /etc/smartd.conf
    echo "/dev/twe0 -a -d 3ware,1 -a -m ${ADMIN_EMAIL}" >> /etc/smartd.conf
else
    /sbin/chkconfig --level 345 smartd off
fi

mkdir -vp /root/original
cp -vp /etc/sysconfig/network /root/original
perl -pi -e "s/^HOSTNAME=localhost.localdomain/HOSTNAME=${HOST_NAME}/" /etc/sysconfig/network
perl -pi -e "s/^HOSTNAME=localhost/HOSTNAME=${HOST_NAME}/" /etc/sysconfig/network
fgrep HOSTNAME /etc/sysconfig/network

cp -vp /etc/hosts /root/original
perl -pi -e "s/localhost.localdomain/${HOST_NAME} localhost.localdomain/" /etc/hosts
fgrep 127.0.0.1 /etc/hosts

cp -vp /etc/httpd/conf/httpd.conf /root/original
perl -pi -e "s/#ServerName www.example.com:80/ServerName ${HOST_NAME}:80/" /etc/httpd/conf/httpd.conf
fgrep ServerName /etc/httpd/conf/httpd.conf

perl -pi -e "s/^ServerAdmin root\@localhost/ServerAdmin ${ADMIN_EMAIL}/" /etc/httpd/conf/httpd.conf
fgrep ServerAdmin /etc/httpd/conf/httpd.conf

perl -pi -e "s/^#NameVirtualHost \*:80$/NameVirtualHost *:80/i" /etc/httpd/conf/httpd.conf
fgrep NameVirtualHost /etc/httpd/conf/httpd.conf

perl -pi -e "s/ServerName bugzilla.tryggth.com/ServerName ${HOST_NAME}/" /etc/httpd/conf.d/bugzilla.conf
fgrep ServerName /etc/httpd/conf.d/bugzilla.conf

#TODO - setup the ssl.conf file

# delete the extra kernels

# Do some server hardening
# Configure firewall
mkdir -vp /root/original
cp -v /etc/shorewall/shorewall.conf /root/original
perl -pi -e "s/^IPTABLES=$/IPTABLES=\/sbin\/iptables/" /etc/shorewall/shorewall.conf
grep ^IPTABLES= /etc/shorewall/shorewall.conf
perl -pi -e "s/^STARTUP_ENABLED=No/STARTUP_ENABLED=Yes/" /etc/shorewall/shorewall.conf
grep ^STARTUP_ENABLED= /etc/shorewall/shorewall.conf


/usr/bin/rdiff-backup  --print-statistics --exclude-device-files --exclude '/var/backup' --exclude '/proc' --exclude '/dev' --exclude '/sys' --exclude '/selinux' --exclude '/tmp' --exclude '/mnt' --exclude '/var/log' / /var/backup/rdiff-backup


# delete the extra kernels

# Do some server hardening
# Configure firewall
# Setup IP addresses (DNS, gateway, netmask)
# Configure sendmail 
# Configure timezone on server
# set bugzilla maintainer, initial URL

# add jwalters user - change to no root login, change check against certificate login

# change password
echo "Change the password"
echo "Get the new kernel"
echo "Do some server hardening"
echo "Configure firewall"
echo "Setup IP addresses (DNS, gateway, netmask)"
echo "Configure sendmail" 

# Timezone can now be set in webmin
#echo "Configure timezone on server"
echo "Set bugzilla maintainer, initial URL"



######################################################
# This is the end of the standard Bugzilla install
######################################################


yum -y install phpldapadmin
# need to configure
perl -pi -e "s/127.0.0.1/all/i" /etc/httpd/conf.d/phpldapadmin.conf
fgrep Allow /etc/httpd/conf.d/phpldapadmin.conf

cd /etc/phpldapadmin
cp config.php /root/original
# fix the spelling error below
patch -p0 < /var/www/html/bugzilla/configuration/integration/phpldapdmin.config.php.patch
chmod 644 config.php
fgrep bugopolis config.php

/sbin/service httpd restart

# This unnecessary since the patch is applied to source already
#yum -y install patch
#cp /var/www/html/bugzilla/configuration/integration/bugzilla-3.0.patch /var/www/html/bugzilla
#cd /var/www/html/bugzilla
#patch -p0 < bugzilla-3.0.patch

yum -y install perl-LDAP

cp /etc/aliases /root/original
cat /var/www/html/bugzilla/configuration/integration/aliases >> /etc/aliases

# This unnecessary since the patch is applied to source already
#cp /var/www/html/bugzilla/configuration/integration/bugzilla-3.0-password.patch /var/www/html/bugzilla
#cd /var/www/html/bugzilla
#patch -p0 < bugzilla-3.0-password.patch

#echo "support-auto: bugzilla-daemon" >> /etc/aliases
#echo "bugzilla-daemon: |/var/www/html/bugzilla/configuration/integration/email_in.sh" >> /etc/aliases
#echo
## need to rebuild aliases file

mysql --user=root --password=bugopolis mysql < /var/www/html/bugzilla/configuration/integration/customer_bug.sql


# deal with openldap
#suffix          "dc=ldap,dc=bugopolis,dc=com"
#rootdn          "cn=Manager,dc=ldap,dc=bugopolis,dc=com"

cp /etc/openldap/slapd.conf /root/original
perl -pi -e 's/^(suffix.*").*"$/\1dc=ldap,dc=bugopolis,dc=com"/i' /etc/openldap/slapd.conf
grep ^suffix /etc/openldap/slapd.conf

perl -pi -e 's/^(rootdn.*").*"$/\1cn=Manager,dc=ldap,dc=bugopolis,dc=com"/i' /etc/openldap/slapd.conf
grep ^rootdn /etc/openldap/slapd.conf

perl -pi -e "s/^# rootpw(.*)secret/rootpw\1secret/i" /etc/openldap/slapd.conf
fgrep rootpw /etc/openldap/slapd.conf

/sbin/service ldap restart
sleep 10
ldapadd -x -D "cn=Manager,dc=ldap,dc=bugopolis,dc=com" -w secret -f /var/www/html/bugzilla/configuration/integration/ldap.ldif
ldapadd -x -D "cn=Manager,dc=ldap,dc=bugopolis,dc=com" -w secret -f /var/www/html/bugzilla/configuration/integration/customer_user.ldif

touch /var/log/bugzilla-email-{in,out}.log
chmod 0666 /var/log/bugzilla-email-{in,out}.log

#echo "customer: |/var/www/html/bugzilla/configuration/integration/email_out.sh" >> /etc/aliases


svnadmin create --fs-type=fsfs /var/lib/svnroot


cp -va /var/www/html/bugzilla/configuration/integration/svn_bz_append.pl /usr/bin
cp -va /var/www/html/bugzilla/configuration/integration/post-commit /var/lib/svnroot/hooks/
# the following may not be necessary
chmod 0755 /var/lib/svnroot/hooks/post-commit
touch /var/log/svn-bz-commits.log
chmod 0666 /var/log/svn-bz-commits.log

cp /etc/viewvc/viewvc.conf /root/original
perl -pi -e "s/^cvs_roots/#cvs_roots/i" /etc/viewvc/viewvc.conf
grep cvs_roots /etc/viewvc/viewvc.conf

perl -pi -e "s/^#svn_roots(.+)(\/home\/svnrepos)/svn_roots\1\/var\/lib\/svnroot/i" /etc/viewvc/viewvc.conf
grep svn_roots /etc/viewvc/viewvc.conf

perl -pi -e "s/^default_root = cvs/default_root = svnroot/i" /etc/viewvc/viewvc.conf
grep default_root /etc/viewvc/viewvc.conf


cd /usr/lib/python2.4/site-packages/viewvc/lib
cp /var/www/html/bugzilla/configuration/integration/xref.py .
cp /usr/lib/python2.4/site-packages/viewvc/lib/viewvc.py /root/original
patch -p1 < /var/www/html/bugzilla/configuration/integration/viewvc-1.0.4.patch


cp /var/www/html/bugzilla/configuration/integration/LdapAuthentication.php /var/www/mediawiki/includes

cd /var/www/mediawiki/includes
patch -p2 < /var/www/html/bugzilla/configuration/integration/mediawiki-1.8.4.patch


cat <<EOF >/tmp/mysql-script-1
GRANT ALL PRIVILEGES ON wikidb.* TO 'wikiuser'@'localhost' IDENTIFIED BY 'bugopolis' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF

mysql -u root --password=bugopolis mysql < /tmp/mysql-script-1

perl -pi -e "s/127.0.0.1/all/i" /etc/httpd/conf.d/mediawiki.conf
fgrep Allow /etc/httpd/conf.d/mediawiki.conf

/sbin/service httpd restart

# install mediawiki via the web
# modify LocalSettings.php

cd /var/www/mediawiki/includes
patch -p2 < /var/www/html/bugzilla/configuration/integration/mediawiki-ldap-1.6.9.patch
# This doesn't seem to be necessary... but I don't know why
#patch -p1 < /var/www/html/bugzilla/configuration/integration/mediawiki-ldap-1.6.9-2.patch

cp -va /var/www/mediawiki/config/LocalSettings.php /var/www/mediawiki
# LocalSettings.php settings to LocalSettings.php

# Configure Mediawiki

