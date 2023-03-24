#!/bin/bash

INSTALLPATH=/var/www/LibreBooking
DBNAME=librebooking

# Add vagrant to www-data group

#sudo usermod -G adm,cdrom,dip,plugdev,lxd,lpadmin,sambashare,www-data vagrant
sudo usermod -a -G www-data vagrant

cd $INSTALLPATH

if [ -f tpl_c ]; then
  rm -rf tpl_c
fi

mkdir tpl_c

# Run composer to finish LibreBooking install

composer install

# Create LibreBooking log directory and assign to default Apache owner:group

cd /var/log
sudo mkdir $DBNAME
sudo chown www-data:www-data $DBNAME
