########################################################################################################################
# Web Container for testing purposes                                                                                   #
# Name: web                                                                                                            #
########################################################################################################################
FROM python:2

LABEL description="Web Container for testing purposes"
LABEL maintainer="artem.iljin@gmail.com"

ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD ./src/requirements.txt /code/
RUN pip install -r requirements.txt
ADD ./src/code /code/
EXPOSE 8000