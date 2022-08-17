FROM python:3.8-alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
run pip install -r requirements.txt
EXPOSE 5000
run apt-get install curl -y
RUN curl localhost:5000
CMD ["python", "app.py"]
