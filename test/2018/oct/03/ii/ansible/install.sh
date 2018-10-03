#!/bin/sh
set -e -x
# https://www.digitalocean.com/community/tutorials/how-to-install-apache-kafka-on-ubuntu-18-04
echo "===== Step1. Creating a User for Kafka. ====="
sudo useradd kafka -m
#sudo passwd kafka
sudo adduser kafka sudo
echo "[OK]"

