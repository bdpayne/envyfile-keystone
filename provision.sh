#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git
sudo apt-get install -y python-virtualenv
sudo apt-get install -y python-dev libxml2-dev libxslt1-dev libsasl2-dev libsqlite3-dev libssl-dev libldap2-dev

ssh-keyscan -H github.com > ~/.ssh/known_hosts

git config --global user.name "Bryan D. Payne"
git config --global user.email "bdpayne@acm.org"
git clone https://github.com/openstack/keystone.git

cd keystone
cp etc/keystone.conf.sample etc/keystone.conf
python tools/install_venv.py
