#!/bin/sh
set -e -x
! test -n "$N" && N=001
# https://blog.nolanemirot.com/2017/08/14/install-airflow-1-8-0-on-ubuntu-16-04/
H=/opt/airflow/airflow_home
D=/opt/airflow/airflow_home/.local/bin/
F="nolan.py"
W=$PWD
test "$N" -le "001" && sudo apt-get update
test "$N" -le "002" && sudo -u postgres psql -c '\q'
test "$N" -le "003" && sudo -u postgres psql -c "DROP DATABASE IF EXISTS airflow"
test "$N" -le "004" && sudo -u postgres psql -c "DROP ROLE IF EXISTS airflow"
test "$N" -le "005" && sudo -u postgres psql -c "CREATE USER airflow with PASSWORD 'airflow'"
test "$N" -le "006" && sudo -u postgres psql -c "CREATE DATABASE airflow"
test "$N" -le "007" && sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE airflow to airflow"

test "$N" -le "008" && sudo apt-get -y install python-pip
test "$N" -le "009" && sudo pip install --upgrade pip

test "$N" -le "010" && sudo mkdir -p "$H"
test "$N" -le "011" && sudo rm -rf "$H/env"

test "$N" -le "012" && sudo adduser --quiet --disabled-password --home "$H" airflow || true
test "$N" -le "013" && sudo chown -R airflow "$H"
test "$N" -le "014" && sudo pip install virtualenv

test "$N" -le "015" && (cd "$H" && sudo -H  -u airflow virtualenv -p /usr/bin/python3 -v "$H/env")
test "$N" -le "016" && sudo -H  -u airflow sh "$H/env/bin/activate"
test "$N" -le "017" && sudo -H  -u airflow pip uninstall -y apache-airflow || rm -rf "$H/$web/py3_airflow"
test "$N" -le "018" && sudo -H  -u airflow pip uninstall -y redis || rm -rf "$H/web/py3_redis"

test "$N" -le "019" && sudo -H  -u airflow AIRFLOW_HOME="$H" pip install --user apache-airflow[postgres,s3,celery]==1.8.2
test "$N" -le "020" && sudo -H  -u airflow pip install --user redis
test "$N" -le "021" && sudo -H  -u airflow ${D}airflow webserver 2>&1 || true

test "$N" -le "022" && sudo mkdir -p "$H/web/"
test "$N" -le "023" && sudo cp "$W/_03_files/airflow.cfg" "$H/web/airflow.cfg.sample"
test "$N" -le "024" && sudo sed -i 's#executor = CeleryExecutor#executor = CeleryExecutor#' "$H/web/airflow.cfg.sample"
test "$N" -le "025" && sudo sed -i 's#sql_alchem_conn = postgresql+psycopg2://airflow:airflow@localhost/airflow#sql_alchem_conn = postgresql+psycopg2://airflow:airflow@localhost/airflow#' "$H/web/airflow.cfg.sample"
test "$N" -le "026" && sudo sed -i 's#broker_url = redis://127.0.0.1:6379/1#broker_url = redis://127.0.0.1:6379/1#g' "$H/web/airflow.cfg.sample"
test "$N" -le "027" && sudo sed -i 's#celery_result_backend = db+postgres://airflow:airflow@localhost:5432/airflow#celery_result_backend = db+postgres://airflow:airflow@localhost:5432/airflow#g' "$H/web/airflow.cfg.sample"

test "$N" -le "028" && sudo chown -R airflow "$H/web/airflow.cfg.sample"
test "$N" -le "029" && sudo -H  -u airflow ${D}airflow initdb

test "$N" -le "030" && sudo cp "$W/_03_files/kill-all-airflow.sh" "$H/web/"
test "$N" -le "031" && sudo cp "$W/_03_files/kill-all-airflow-workers.sh" "$H/web/"
test "$N" -le "032" && sudo cp "$W/_03_files/start.sh" "$H/web/"


test "$N" -le "033" && sudo -H  -u airflow cd /tmp && wget http://download.redis.io/redis-stable.tar.gz
test "$N" -le "034" && sudo -H  -u airflow cd /tmp && tar xvzf redis-stable.tar.gz
test "$N" -le "035" && sudo -H  -u airflow cd /tmp/redis-stable && make && cd src && sh redis-server

test "$N" -le "036" && sudo -H  -u airflow mkdir -p "$H/dags"
test "$N" -le "037" && sudo -H  -u airflow cp "$W/_03_files/$F" "$H/dags/"

test "$N" -le "038" && sudo -H  -u airflow ${D}airflow worker &
test "$N" -le "039" && sudo -H  -u airflow ${D}airflow scheduler &
test "$N" -le "040" && sudo -H  -u airflow ${D}airflow webserver -p 8080
