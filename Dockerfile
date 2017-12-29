FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y software-properties-common wget
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update && apt-get install -y python3.6 python3.6-dev python3.6-venv
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN ln -s /usr/bin/python3.6 /usr/local/bin/python3
RUN ln -s /usr/local/bin/pip3.6 /usr/local/bin/pip3
RUN python3 get-pip.py
WORKDIR /opt/cat-service
RUN pip3 install --upgrade pip tox
COPY . /opt/cat-service


ENTRYPOINT ["bash"]
