FROM python:3.6.8-slim-stretch

ARG PORT=8080

WORKDIR /airflow/

COPY airflow.cfg .
COPY dags/ .

RUN apt -y update && \
	apt -y install build-essential

RUN export AIRFLOW_HOME=/airflow/ && pip install apache-airflow

EXPOSE $PORT

RUN airflow initdb

RUN apt purge -y --auto-remove build-essential
