#Automatic Install

This script help to install some tools and modules php for laravel and install mysql-server and more thing.

Step for change Password Mysql

* UPDATE mysql.user SET authentication_string = PASSWORD('new_password') WHERE user = 'root';

* UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE user = 'root';

Reload mysql service and login with your password.

Step for install composer

* Edit Script instalador.sh and edit hash md5 '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5' to hash new of page https://getcomposer.org/download/
