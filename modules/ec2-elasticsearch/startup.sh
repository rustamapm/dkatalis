#!/bin/bash
apt-get update
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.13.4-amd64.deb
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.13.4-amd64.deb.sha512
shasum -a 512 -c elasticsearch-8.13.4-amd64.deb.sha512 
dpkg -i elasticsearch-8.13.4-amd64.deb
apt install ansible -y
