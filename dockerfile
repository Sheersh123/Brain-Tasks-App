FROM nginx:alpine
COPY /dist/* /usr/share/nginx/html
COPY . .
EXPOSE 80
CMD ["nginx", "-g","deamon-off;"]
