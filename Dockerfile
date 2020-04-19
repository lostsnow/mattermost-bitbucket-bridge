FROM python:3

RUN mkdir /app
ADD bitbucket.py /app
ADD helpers.py /app
ADD config.json /app

RUN pip install flask
RUN pip install requests

WORKDIR /app
CMD [ "python", "/app/bitbucket.py" ]
