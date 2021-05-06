#SSL
openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=IT/ST=Roma/L=Roma/O=42ROMALUISS/OU=liafigli/CN=42roma"

# Config Access
chown -R www-data /var/www/*
chmod -R 755 /var/www/*

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
rm phpMyAdmin-4.9.0.1-all-languages.tar.gz
mv phpMyAdmin-4.9.0.1-all-languages/ pma
mysqladmin -u root password 'localhost'


#Wordpress
wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
rm latest.tar.gz
cd wordpress
mv /tmp/wp-config.php /var/www/html/wordpress/wp-config.php
#mysql -u root -p --skip-password
echo "CREATE DATABASE liafigli;" | mysql -u root --skip-password
echo "CREATE USER 'liafigli'@'localhost' identified by 'localhost';" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON liafigli.* TO 'liafigli'@'localhost';" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password
chown -R www-data:www-data /var/www/html/wordpress


#Service restart
service nginx restart
service php7.3-fpm restart
bash
