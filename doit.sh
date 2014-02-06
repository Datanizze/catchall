#!/bin/bash 

ROOT_UID=0

if [ "$#" -lt "1" ]
then
	echo "missing param"
	echo "usage: $0 /path/to/public_html"
	exit 1
fi

if [ "$UID" -ne "$ROOT_UID" ]
then
	echo "Need to be root! ffs!"
	exit 2
fi

WORKING_DIR=`echo $0 | awk 'BEGIN{FS=OFS="/"}{$NF=""; NF--; print}'`
APACHE_SITES="/etc/apache2/sites-available"

cp ${WORKING_DIR}/catchall.conf ${APACHE_SITES}

sed -i -e "s#REPLACE_THIS#$1#g" ${APACHE_SITES}/catchall.conf

a2enmod vhost_alias
a2ensite catchall

service apache2 restart

echo "DONE!"
