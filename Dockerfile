FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3-pip python3-dev
WORKDIR /usr/local/bin
RUN ln -s /usr/bin/python3 python

ADD cat_service /usr/local/party/cat_service
ADD requirements.txt /usr/local/party/requirements.txt
WORKDIR /usr/local/party

RUN pip3 install --upgrade pip
RUN pip install -r requirements.txt

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
ENV FLASK_APP cat_service/server.py
EXPOSE 5000
ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
