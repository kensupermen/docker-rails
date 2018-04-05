FROM ubuntu:16.04

#install nginx 1.11
RUN apt-get update && apt-get install -y nginx

#expose port
EXPOSE 80
#EXPOSE 443

CMD ["nginx","-g","daemon off;"]

#remove default config nginx
RUN rm -rf /etc/nginx/conf.d/default.conf

#copy file config from host
COPY default.conf /etc/nginx/conf.d/
