FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3-pip python3-dev
WORKDIR /usr/local/bin
RUN ln -s /usr/bin/python3 python
RUN pip3 install --upgrade pip

ENTRYPOINT ["python3"]
