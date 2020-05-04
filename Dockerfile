FROM python:3.7-slim

RUN apt-get -y update && \
    apt-get -y install  \
        python-pip \
        graphviz

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN mkdir diagram_files

WORKDIR /diagram_files

COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]