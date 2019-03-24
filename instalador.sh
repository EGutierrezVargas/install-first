echo "Actualizando la distro"
sudo apt-get update

echo "Instalando MYSQL"
sudo apt-get install mysql-server -y

echo "Instalando Modulos de PHP"
sudo add-apt-repository ppa:ondrej/php

sudo apt install php-common php-curl php-json php-readline php-fpm php-cli php-xml php-mcrypt php-zip php-mbstring php-gd -y
sudo apt install php7.2 libapache2-mod-php7.2 php7.2-mbstring php7.2-xmlrpc php7.2-soap php7.2-gd php7.2-xml php7.2-cli php7.2-zip -y

sudo phpenmod mcrypt

echo "Instalando Apache2"

sudo apt-get install apache2 -y

echo "Se instala Curl"
sudo apt-get install curl

echo "Instalando Git"

sudo apt-get install git -y

echo "Instalando NVM"
sudo curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

echo "Se instala composer"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

sudo mv composer.phar /usr/local/bin/composer

echo "Activando rutas amigables"
sudo a2enmod rewrite
echo "Finalización completa"
