FROM python:3.8-alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
run pip install -r requirements.txt
EXPOSE 5000
RUN apk add --update curl && \
    rm -rf /var/cache/apk/*
run curl --version
RUN curl -X "GET" "http://localhost:5000/"
CMD ["python", "app.py"]
