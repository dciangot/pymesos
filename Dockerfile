FROM python:2.7

WORKDIR /usr/src/app

RUN apt-get install -y build-essential
RUN pip install --no-cache-dir pymesos 

COPY examples/executor.py .
COPY examples/scheduler.py .
COPY pymesos/process.py /usr/local/lib/python2.7/site-packages/pymesos/process.py
