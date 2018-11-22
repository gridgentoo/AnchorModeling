#!/bin/sh
set -e -x
! test -n "$N" && N=001
# https://blog.nolanemirot.com/2017/08/14/install-airflow-1-8-0-on-ubuntu-16-04/
test "$N" -le "001" && sudo apt-get update
test "$N" -le "002" && sudo postgresql postgresql-contrib
test "$N" -le "003" && sudo -u postgres psql
#CREATE USER airflow with PASSWORD 'airflow';
#CREATE DATABASE airflow;
#GRANT ALL PRIVILEGES ON airflow to airflow;
