# ft_server
<html>
   <head></head>
<body>
<h2>FT_SERVER</h2>DEL CACHE: docker system prune -a <br>


docker run -p 80:80 -p 443:443 -it --name ciao debian:buster
<hr>
apt-get update
<hr>

apt install nginx

   Y
<hr>

service nginx start
<hr>
service --status-all
<hr>
apt install mariadb-server mariadb-client
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
 server {
        listen 80 default_server;
        listen [::]:80 default_server;
        listen 443 ssl default_server;
        listen [::]:443 ssl default_server;
        ssl_certificate /etc/ssl/certs/nginx-selfsigned.crt;
        ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;
        ssl_session_tickets off;
//senza chiudere la parentesi
<hr>
nginx -t
<hr>
service nginx reload
<hr>
apt install wget
<hr>
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz.
<hr>
tar -xf phpMyAdmin-4.9.0.1-all-languages.tar.gz
<hr>
 </ul>
 </body>
 </html>
