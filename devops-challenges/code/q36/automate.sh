#!/bin/bash

LOGFILE="automate.log"

function log {
  echo "[$(date +%Y-%m-%d:%H:%M:%S)] $1" >> $LOGFILE
}

function install_mysql {
  log "Installing MySQL..."
  sudo apt-get update
  sudo apt-get install -y mysql-server
  sudo mysql_secure_installation
  log "MySQL installed."
}

function install_postgresql {
  log "Installing PostgreSQL..."
  sudo apt-get update
  sudo apt-get install -y postgresql postgresql-contrib
  log "PostgreSQL installed."
}

function install_nginx {
  log "Installing Nginx..."
  sudo apt-get update
  sudo apt-get install -y nginx
  sudo ufw allow 'Nginx Full'
  log "Nginx installed."
}

function install_apache {
  log "Installing Apache..."
  sudo apt-get update
  sudo apt-get install -y apache2
  sudo ufw allow 'Apache'
  log "Apache installed."
}

function check_status {
  log "Checking service status..."
  systemctl status mysql
  systemctl status postgresql
  systemctl status nginx
  systemctl status apache2
}

echo "What do you want to install?"
echo "1. MySQL"
echo "2. PostgreSQL"
echo "3. Nginx"
echo "4. Apache"
echo "5. Check Status"

read -p "Enter your choice (1-5): " choice

case $choice in
  1) install_mysql ;;
  2) install_postgresql ;;
  3) install_nginx ;;
  4) install_apache ;;
  5) check_status ;;
  *) echo "Invalid choice" ;;
esac
