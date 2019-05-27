#!/bin/sh

airflow initdb &
airflow scheduler &
airflow webserver --port 8080
