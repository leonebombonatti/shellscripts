#!/bin/bash
#-----------------------------------------------------------------------------------
# *** Developed by Leone Bombonatti ***
# This script installs all tools used in the PHP development environment.
#-----------------------------------------------------------------------------------
# Updating Ubuntu packages
apt-get update
# Installing the LAMP server
apt-get install lamp-server^
# Installation of GIT
apt-get install git
# Installation of Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
# Installation of Laravel
composer global require "laravel/installer"
# Installation of NodeJS and NPM
apt-get install nodejs
apt-get install npm
# Installation of Bower
npm install -g bower