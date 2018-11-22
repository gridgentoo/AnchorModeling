#!/bin/bash
for pid in $(ps -aux | grep celery@airflow | grep -v grep | grep -v -i ambari|awk '{print $2}'); do kill $pid; done
rm -f /opt/airflow/airflow_home/airflow-worker.pid
