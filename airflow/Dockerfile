FROM python:3.6.8-slim-stretch

WORKDIR /airflow

RUN apt -y update && \
	apt -y install build-essential

RUN pip install -r requirements.txt

ADD airflow.cfg .
ADD requirements.txt .
ADD dags .
ADD airflow_init.sh .

ENV AIRFLOW_HOME /airflow

RUN apt purge -y --auto-remove build-essential && rm requirements.txt

CMD ["/airflow/airflow_init.sh"]
