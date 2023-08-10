FROM python:3.9-alpine3.17
MAINTAINER 81784779@qq.com
WORKDIR /LearnCICD

RUN apt-get install  default-libmysqlclient-dev -y && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
ADD requirements.txt requirements.txt
RUN pip install --upgrade pip  && \
    pip install --no-cache-dir -r requirements.txt  && \
    pip cache purge

ADD . .
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:11111"]