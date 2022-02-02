FROM python:3.10-slim

RUN apt-get -y clean && apt-get -y update

RUN apt-get -y install nginx  

COPY . /app
WORKDIR /app

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

RUN rm -v /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
COPY kanika-services.service /usr/lib/systemd/system/

RUN ["cat", "/usr/lib/systemd/system/kanika-services.service"]
RUN ["which", "nginx"]

EXPOSE 80

RUN chmod +x ./startup.sh
ENTRYPOINT ["./startup.sh"]