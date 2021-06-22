FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY chatapp.conf /etc/nginx/conf.d/
#RUN ln -s /usr/share/nginx/sites-available/chatapp /usr/share/nginx/sites-enabled/
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
