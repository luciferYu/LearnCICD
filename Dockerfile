FROM python:3.9-alpine3.17
MAINTAINER 81784779@qq.com

ARG IP=0.0.0.0
ARG PORT=80

ADD . .

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime && \
    pip install --upgrade pip  && \
    pip install --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt  && \
    pip cache purge && \
    chmod +x entrypoint.sh
    # apk add gcc



EXPOSE ${PORT}
ENTRYPOINT ["./entrypoint.sh", "${IP}", "${PORT}" ]