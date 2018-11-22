#!/bin/sh
set -e -x
! test -n "$N" && N=015
# https://blog.nolanemirot.com/2017/08/14/install-airflow-1-8-0-on-ubuntu-16-04/
test "$N" -le "001" && sudo apt-get update
test "$N" -le "002" && sudo -u postgres psql -c '\q'
test "$N" -le "003" && sudo -u postgres psql -c "DROP ROLE IF EXISTS airflow"
test "$N" -le "004" && sudo -u postgres psql -c "CREATE USER airflow with PASSWORD 'airflow'"
test "$N" -le "005" && sudo -u postgres psql -c "DROP DATABASE IF EXISTS airflow"
test "$N" -le "006" && sudo -u postgres psql -c "CREATE DATABASE airflow"
test "$N" -le "007" && sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE airflow to airflow"
test "$N" -le "008" && sudo apt-get -y install python-pip
test "$N" -le "009" && sudo pip install virtualenv
test "$N" -le "010" && sudo mkdir -p /opt/airflow/airflow_home
test "$N" -le "011" && (cd /opt/airflow/airflow_home/ && sudo virtualenv -v air_env)
test "$N" -le "012" && sudo sh /opt/airflow/airflow_home/air_env/bin/activate
test "$N" -le "013" && pip install airflow[postgres,s3,celery]==1.8.0
test "$N" -le "014" && pip install redis
test "$N" -le "015" && airflow webserver 2>/dev/null || true
