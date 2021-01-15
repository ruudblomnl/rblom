#!/bin/bash
#
echo '------------------------------------------'
echo 'Begin of web install'
echo '------------------------------------------'
echo \
echo '------------------------------------------'
echo 'Start updating and upgrading'
apt update && apt upgrade -y
#
apt install -y apache2 php php-xml php-pdo-mysql php-zip php-gd libapache2-mod-php
a2enmod rewrite
service apache2 restart
cp phpinfo.php /var/www/html
chown -R www-data:www-data 
#
echo \
echo '------------------------------------------'
echo 'End of Script'
echo '------------------------------------------'
