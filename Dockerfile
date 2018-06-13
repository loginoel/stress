FROM python:latest

RUN apt-get update && apt-get install -y stress cpulimit psmisc

WORKDIR stress
ADD src/ .
RUN pip install -r requirements.txt
CMD ["/usr/local/bin/python", "server.py"]