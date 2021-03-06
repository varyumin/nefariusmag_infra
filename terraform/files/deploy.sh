#!/bin/bash
set -e

APP_DIR=/home/appuser

sudo git clone https://github.com/Otus-DevOps-2017-11/reddit.git $APP_DIR/reddit
cd $APP_DIR/reddit
bundle install

sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma
