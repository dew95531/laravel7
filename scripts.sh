#!/bin/bash
yum -y install epel-release
yum -y install nginx
systemctl start nginx
systemctl enable nginx
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
yum install -y php71w php71w-curl php71w-common php71w-cli php71w-mysql php71w-mbstring php71w-fpm php71w-xml php71w-pdo php71w-zip
systemctl start php-fpm
systemctl enable php-fpm
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/bin --filename=composer
mkdir -p /var/www
yum -y install git 
yum -y install npm
mv laravel /etc/nginx/conf.d/
