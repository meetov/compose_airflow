FROM python:3.6.8-slim-stretch

RUN apt -y update && \
	apt -y install build-essential

ARG AIRFLOW_HOME
ARG AIRFLOW__CORE__SQL_ALCHEMY_CON

ENV AIRFLOW__CORE__SQL_ALCHEMY_CON=$AIRFLOW__CORE__SQL_ALCHEMY_CON

WORKDIR $AIRFLOW_HOME

ADD requirements.txt .
ADD airflow_init.sh .

RUN pip install -r requirements.txt

RUN apt purge -y --auto-remove build-essential && rm requirements.txt

CMD ["./airflow_init.sh"]
