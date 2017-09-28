FROM library/amazonlinux
MAINTAINER hiromis

RUN yum -y update
RUN yum -y install curl wget nodejs npm 
RUN npm install n -g
RUN npm install npm@5.3 -g
RUN n 8.1.3

RUN apt purge -y nodejs npm
