#!/bin/sh
set -x -e
! test -n "$N" && N=001
# https://www.digitalocean.com/community/tutorials/postgresql-ubuntu-16-04-ru
test "$N" -le "001" && sudo apt-get update
test "$N" -le "002" && sudo apt-get -y install postgresql postgresql-contrib
test "$N" -le "003" && sudo -u postgres psql -c '\q'
test "$N" -le "004" && sudo -u postgres createuser --no-superuser sammy --no-password || true
test "$N" -le "005" && sudo -u postgres createdb sammy || true
