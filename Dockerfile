FROM ubuntu:16.04
MAINTAINER Josh McMillan <josh.mcmillan@beano.com>

RUN apt-get update -y
RUN apt-get install -y python python-pip
RUN pip install --upgrade awscli

CMD aws ecr get-login --region eu-west-1
