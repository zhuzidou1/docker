FROM registry.cn-shanghai.aliyuncs.com/fc-demo/python:3.7.4-slim-stretch
RUN pip install flask gunicorn
ENV RUNTIME_PATH = /var/fc/runtime/python3.7.4
RUN mkdir -p ${RUNTIME_PATH}
WORKDIR ${RUNTIME_PATH}
COPY ./server.py ./server.py
ENTRYPOINT [ "gunicorn", "-w",  "1", "--threads", "10",  "-b" , "0.0.0.0:9000",  "server:app" ]

