FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html




#CMD ["bash -c","while [ true ]; do nginx -s reload; sleep 5; done", "&"   "nginx", "-g", "daemon off;"]
ENTRYPOINT  sh -c "while [ true ]; do nginx -s reload; sleep 5; done" & nginx -g "daemon off;"
