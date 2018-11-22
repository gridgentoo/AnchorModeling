#!/bin/sh
set -x -e
! test -n "$N" && N=001
# https://www.digitalocean.com/community/tutorials/how-to-install-the-django-web-framework-on-ubuntu-16-04
test "$N" -le "001" && sudo apt-get update
test "$N" -le "002" && sudo apt-get -y install python3-pip
test "$N" -le "003" && sudo pip3 install virtualenv
