FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY . /app
RUN apt-get update && apt-get dist-upgrade -y 
RUN apt-get install ncat -y
RUN pip install -r requirements.txt
RUN chmod +x /app/entrypoint.sh