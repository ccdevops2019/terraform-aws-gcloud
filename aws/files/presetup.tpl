#!/bin/bash
apt-get update
apt-get install -y apache2
echo "<html><body><h1>Hello World</h1><p>This page was created from a simple start up script!</p></body></html>" > /var/www/html/index.html

