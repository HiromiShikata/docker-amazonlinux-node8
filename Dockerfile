FROM amazonlinux:2017.03
MAINTAINER hiromis

RUN yum -y update
RUN yum -y install curl wget nodejs npm 
RUN npm install n -g
RUN npm install npm@5.3 -g
RUN n 8.1.3

RUN yum remove -y nodejs npm
