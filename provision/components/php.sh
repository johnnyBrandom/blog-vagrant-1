#!/bin/bash

sudo apt-get update

#sudo apt-get install -y software-properties-common ca-certificates lsb-release apt-transport-https
sudo apt-get install -y software-properties-common ca-certificates 

sudo apt-get install -y php php-bcmath php-bz2 php-cli php-curl php-intl php-json php-mbstring php-opcache php-soap php-xml php-xsl php-zip libapache2-mod-php php-mysql php-gd gettext

# Get the php version that was installed by querying the /etc/php subdir
# Note this command expects a single subdirectory

IFS=$'\n' read -r -d '' -a PHPV <<< "$(ls /etc/php)"

# Modify parameters in php.ini

sed -i 's/max_execution_time = .*/max_execution_time = 60/' /etc/php/$PHPV/apache2/php.ini
sed -i 's/post_max_size = .*/post_max_size = 64M/' /etc/php/$PHPV/apache2/php.ini
sed -i 's/upload_max_filesize = .*/upload_max_filesize = 1G/' /etc/php/$PHPV/apache2/php.ini
sed -i 's/memory_limit = .*/memory_limit = 512M/' /etc/php/$PHPV/apache2/php.ini

# Enable gd.ini

sudo phpenmod gd
sudo service apache2 restart
