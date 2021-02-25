#SSL
openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=IT/ST=Roma/L=Roma/O=42ROMALUISS/OU=liafigli/CN=42roma"

#PHP
service php7.3-fpm start

#NGINX
service nginx start

#Mysql
service mysql start

#PhpMyAdmin
cd ../../../var/www/html
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
tar -xvzf phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages/ pma
mysqladmin -u root password 'your_password'
##qui va copiato wp-config.php


#Wordpress
wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
cd wordpress cp wp-config-sample.php wp-config.php
mysql -u root -p
CREATE DATABASE liafigli;
CREATE USER 'liafigli'@'localhost' identified by 'liafigli';
GRANT ALL PRIVILEGES ON liafigli.* TO 'liafigli'@'localhost';
FLUSH PRIVILEGES;
EXIT;
chown -R www-data:www-data /var/www/html/wordpress
##qui va copiato wp-config.php


#Service restart
service mysql restart
service nginx restart
service php7.3-fpm restart