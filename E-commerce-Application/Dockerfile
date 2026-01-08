FROM nginx:alpine

# Remove nginx static file
RUN rm -rf /usr/share/nginx/html/*

# Copy only build output
COPY build/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
