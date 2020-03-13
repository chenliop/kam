ARG BASE_CONTAINER=jupyter/tensorflow-notebook
FROM $BASE_CONTAINER

LABEL maintainer="objective partner AG - KAM Community"

COPY ./weatherproject/requirements.txt /home/$NB_USER/requirements.txt

# Install Tensorflow
RUN pip install --quiet -r requirements.txt

WORKDIR /home/$NB_USER/work
