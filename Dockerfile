FROM debian:stable-slim 

LABEL NOMBRE="LUIS MARIO RAMIREZ PERALTA"
LABEL CARNET="RP18011"

RUN apt-get update -y 
RUN apt-get install -y curl 
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash 
RUN apt-get install -y nodejs 
RUN apt-get install -y nginx 
RUN apt-get install -y npm 
RUN npm install -g npm@latest  
RUN npm install -g @quasar/cli 
RUN mkdir /app
RUN apt-get install -y git 
RUN git clone -b v1.0 https://github.com/diseno2021/expedientemedico /app/expediente 
WORKDIR /app/expediente
RUN npm install
RUN quasar build
RUN ls
RUN cp -r /app/expediente/dist/spa/* /var/www/html
RUN ls /var/www/html


CMD ["nginx", "-g", "daemon off;"]



