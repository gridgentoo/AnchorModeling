#!/bin/sh
set -e -x
! test -n "$N" && N=010
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
test "$N" -le "011" && (cd /opt/airflow/airflow_home/ && sudo virtualenv -v env)
test "$N" -le "012" && sudo sh /opt/airflow/airflow_home/env/bin/activate
test "$N" -le "013" && sudo pip install --target=/opt/airflow/airflow_home/web airflow[postgres,s3,celery]==1.8.0
test "$N" -le "014" && sudo pip install --target=/opt/airflow/airflow_home/web redis
test "$N" -le "015" && airflow webserver 2>/dev/null || true

test "$N" -le "016" && sudo cp ./_03_files/airflow.cfg /opt/airflow/airflow_home/web/airflow.cfg
test "$N" -le "017" && sudo sed -i 's#executor = CeleryExecutor#executor = CeleryExecutor#' /opt/airflow/airflow_home/web/airflow.cfg
test "$N" -le "018" && sudo sed -i 's#sql_alchem_conn = postgresql+psycopg2://airflow:airflow@localhost/airflow#sql_alchem_conn = postgresql+psycopg2://airflow:airflow@localhost/airflow#' /opt/airflow/airflow_home/web/airflow.cfg
test "$N" -le "019" && sudo sed -i 's#broker_url = redis://127.0.0.1:6379/1#broker_url = redis://127.0.0.1:6379/1#g' /opt/airflow/airflow_home/web/airflow.cfg
test "$N" -le "020" && sudo sed -i 's#celery_result_backend = db+postgres://airflow:airflow@localhost:5432/airflow#celery_result_backend = db+postgres://airflow:airflow@localhost:5432/airflow#g' /opt/airflow/airflow_home/web/airflow.cfg

test "$N" -le "021" && sudo /opt/airflow/airflow_home/web/airflow/bin/airflow initdb
