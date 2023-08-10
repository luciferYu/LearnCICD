FROM python:3.9-alpine3.17
MAINTAINER 81784779@qq.com

ARG IP=0.0.0.0
ARG PORT=11111


WORKDIR /LearnCICD


ADD requirements.txt requirements.txt

RUN apt-get install  default-libmysqlclient-dev -y && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime && \
    pip install --upgrade pip  && \
    pip install --no-cache-dir -r requirements.txt  && \
    pip cache purge

ADD . .

EXPOSE ${PORT}
ENTRYPOINT ["./entrypoint.sh", "${IP}", "${PORT}" ]