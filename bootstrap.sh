#!/usr/bin/env bash

#Install Java 8
sudo add-apt-repository 'deb http://security.ubuntu.com/ubuntu focal-security main universe'
sudo apt-get install -y openjdk-8-jdk

# Add compiled Geode
echo 'GEODE_HOME=/vagrant/geode/bin' >> /home/vagrant/.bashrc
echo 'export PATH="$GEODE_HOME:$PATH"' >> /home/vagrant/.bashrc
