FROM tensorflow/tensorflow:1.15.5-gpu-py3

# add user
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1001 ubuntu
USER ubuntu

# install pip
RUN /usr/bin/python3 -m pip install -U pip

ADD requirements.txt /tmp/

RUN /usr/bin/python3 -m pip install -r /tmp/requirements.txt

ADD . /app

WORKDIR /app

# bash
CMD ["/bin/bash"]