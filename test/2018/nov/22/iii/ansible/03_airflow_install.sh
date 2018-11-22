#!/bin/sh
set -e -x
! test -n "$N" && N=001
# https://blog.nolanemirot.com/2017/08/14/install-airflow-1-8-0-on-ubuntu-16-04/
H=/opt/airflow/airflow_home
test "$N" -le "001" && sudo apt-get update
test "$N" -le "002" && sudo -u postgres psql -c '\q'
test "$N" -le "003" && sudo -u postgres psql -c "DROP DATABASE IF EXISTS airflow"
test "$N" -le "004" && sudo -u postgres psql -c "DROP ROLE IF EXISTS airflow"
test "$N" -le "005" && sudo -u postgres psql -c "CREATE USER airflow with PASSWORD 'airflow'"
test "$N" -le "006" && sudo -u postgres psql -c "CREATE DATABASE airflow"
test "$N" -le "007" && sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE airflow to airflow"

test "$N" -le "008" && sudo apt-get -y install python3-pip
test "$N" -le "009" && sudo mkdir -p "$H"
test "$N" -le "010" && sudo rm -rf "$H/env"

test "$N" -le "011" && sudo adduser --quiet --disabled-password --home "$H" airflow || true
test "$N" -le "012" && sudo chown -R airflow "$H"
test "$N" -le "013" && sudo pip3 install virtualenv

test "$N" -le "014" && (cd "$H" && sudo -H  -u airflow virtualenv -p /usr/bin/python3 -v env)
test "$N" -le "015" && sudo -H  -u airflow sh "$H/env/bin/activate"
test "$N" -le "016" && sudo -H  -u airflow pip3 uninstall airflow
test "$N" -le "017" && sudo -H  -u airflow pip3 uninstall redis
t
test "$N" -le "018" && sudo -H  -u airflow pip3 install --user --target=/opt/airflow/airflow_home/web/2 airflow[postgres,s3,celery]==1.8.0
test "$N" -le "019" && sudo -H  -u airflow pip3 install --user --target=/opt/airflow/airflow_home/web/3 redis
test "$N" -le "020" && sudo -H  -u airflow /opt/airflow/airflow_home/web/airflow/bin/airflow webserver 2>/dev/null || true

test "$N" -le "021" && sudo cp ./_03_files/airflow.cfg /opt/airflow/airflow_home/web/airflow.cfg.sample
test "$N" -le "022" && sudo sed -i 's#executor = CeleryExecutor#executor = CeleryExecutor#' /opt/airflow/airflow_home/web/airflow.cfg.sample
test "$N" -le "023" && sudo sed -i 's#sql_alchem_conn = postgresql+psycopg2://airflow:airflow@localhost/airflow#sql_alchem_conn = postgresql+psycopg2://airflow:airflow@localhost/airflow#' /opt/airflow/airflow_home/web/airflow.cfg.sample
test "$N" -le "024" && sudo sed -i 's#broker_url = redis://127.0.0.1:6379/1#broker_url = redis://127.0.0.1:6379/1#g' /opt/airflow/airflow_home/web/airflow.cfg.sample
test "$N" -le "025" && sudo sed -i 's#celery_result_backend = db+postgres://airflow:airflow@localhost:5432/airflow#celery_result_backend = db+postgres://airflow:airflow@localhost:5432/airflow#g' /opt/airflow/airflow_home/web/airflow.cfg.sample

test "$N" -le "026" && sudo chown -R airflow /opt/airflow/airflow_home/web/airflow.cfg.sample
test "$N" -le "027" && sudo -H  -u airflow /opt/airflow/airflow_home/web/airflow/bin/airflow initdb
