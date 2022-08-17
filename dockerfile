FROM python:3.8-alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
RUN apk add --update curl && \
    rm -rf /var/cache/apk/*
RUN curl --version

CMD ["python", "app.py"]

# RUN curl -X "GET" "http://python:5000/"
