#esse arquivo é responsável por criar o container do nginx e fazer o build
FROM nginx:latest
MAINTAINER Carl Edwin
#na pasta public teremos os css e as imagens
COPY /public /var/www/public
#copia a configuração do nginx para dentro do nginx
COPY /docker/config/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443
#Parametros extras para o entrypoint
#-g
#daemon off;
CMD ["-g", "daemon off;"]