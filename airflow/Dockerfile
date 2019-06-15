FROM debian:stretch-slim

RUN apt -yqq update && apt -yqq install python3 \
                                            python3-pip \
                                            python3-dev \
                                            default-libmysqlclient-dev

WORKDIR /airflow

ENV AIRFLOW_HOME=/airflow

ADD requirements.txt .
ADD airflow_init.sh .
ADD airflow.cfg .

RUN pip3 install -r requirements.txt

CMD ["./airflow_init.sh"]
