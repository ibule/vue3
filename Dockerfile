FROM nginx
COPY ./dist/ /usr/share/nginx/html/
# 第一步nginx配置文件名称
  COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf
EXPOSE 80