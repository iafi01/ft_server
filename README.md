# ft_server
<html>
   <head></head>
<body>
<h2>FT_SERVER</h2>DEL CACHE: docker system prune -a <br>

<br><h4>Reloadda sempre i plug-in che modifichi (mysql, php7.3-fpm, nginx)</h4><br>

docker run -p 80:80 -p 443:443 -it --name ciao debian:buster
<hr>
apt-get update
<hr>

apt install nginx -y
<hr>

service nginx start
<hr>
service --status-all
<hr>
apt install mariadb-server mariadb-client -y
<hr>
service mysql start
<hr>
service mysql status || mysqladmin version
<hr>
apt-get -y install php7.3-fpm php7.3-common php7.3-mysql php7.3-gmp php7.3-curl php7.3-intl php7.3-mbstring php7.3-xmlrpc php7.3-gd php7.3-xml php7.3-cli php7.3-zip php7.3-soap php7.3-imap
 <hr>
  openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
  
    IT, ROMA, ROMA, 42ROMALUISS, 42ROMALUISS, liafigli, lorenzoiafigliola@gmail.com
<hr>
 cd etc/nginx/sites-available/
<hr>
 apt install vim
 <hr>
 vim default
 <hr>
 server {<br>
  &ensp;    listen 80 default_server;<br>
  &ensp;    listen [::]:80 default_server;<br>
   &ensp;   return 301 https://$host$request_uri;<br>
}
<br>
server{ <br>
 &ensp;     listen 443 ssl default_server;<br>
  &ensp;    listen [::]:443 ssl default_server;<br>
  &ensp;    ssl_certificate /etc/ssl/certs/nginx-selfsigned.crt;<br>
  &ensp;     ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;<br>
 &ensp;      ssl_session_tickets off;<br>
      //senza chiudere la parentesi<br>
<hr>
nginx -t
<hr>
service nginx reload
<hr>
apt install wget
<hr>
cd ../../../var/www/html <br>
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
<hr>
tar -xvzf phpMyAdmin-4.9.0.1-all-languages.tar.gz
<hr>

//decommenta queste due righe<br><br>
location ~ \.php$ {<br>
&ensp;	include snippets/fastcgi-php.conf;<br>
&ensp;	fastcgi_pass unix:/run/php/php7.3-fpm.sock;<br>
	}
<br>
<hr>
Cancella index.nginx-debian.html dal default
<hr>
mv phpMyAdmin-4.9.0.1-all-languages/ pma
<hr>
Vai su localhost/pma
<hr>
mysqladmin -u root password 'your_password'
<hr>
accedi con 'root' e 'your_password
<hr>
wget https://wordpress.org/latest.tar.gz
<hr>
tar -xvzf latest.tar.gz
<hr>
cd wordpress
cp wp-config-sample.php wp-config.php
<hr>
vim wp-config.php
<hr>
MODIFICA:
define( 'DB_NAME', 'liafigli' );<br>
define( 'DB_USER', 'liafigli' );<br>
define( 'DB_PASSWORD', 'liafigli' );<br>
define( 'DB_HOST', 'localhost' );<br>
<hr>
Setta wordpress come predefinita
chown -R www-data:www-data /var/www/html/wordpress
 </body>
 </html>
