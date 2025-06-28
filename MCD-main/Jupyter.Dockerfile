FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y --no-install-recommends python3 python3-pip nodejs \ 
    npm nano unzip libaio1  tzdata  locales software-properties-common \
    pkg-config build-essential python3-dev libmysqlclient-dev && \
    apt clean && \
    echo "America/Mexico_City" > /etc/timezone && \
    echo 'LANG="en_US.UTF-8"' > /etc/default/locale && \    
    sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure -f noninteractive tzdata && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8

RUN ln -sf /usr/share/zoneinfo/America/Mexico_City /etc/localtime

ENV PYTHONPATH /home/jupy
ENV PATH $PATH:/home/jupy/.local/bin

RUN useradd -ms /bin/bash jupy
USER jupy
WORKDIR /home/jupy

COPY settings/requirements/jupyter.requirements.txt /home/jupy/requirements.txt
RUN pip3 install -r requirements.txt

RUN jupyter server --generate-config && \
    echo "c.ServerApp.terminado_settings = { 'shell_command': ['/bin/bash'] }" >> /home/jupy/.jupyter/jupyter_server_config.py

EXPOSE 8888
CMD jupyter lab --ip='*' --port=8888 --no-browser --NotebookApp.token='' --NotebookApp.password='' --allow-root