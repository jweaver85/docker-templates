# nginx state for serving content
FROM nginx:alpine
# Set working directory to nginx asset directory
WORKDIR ./
# Remove default nginx static assets
#RUN rm -rf ./*
# Copy static assets from builder stage
RUN rm -rf /usr/share/nginx/html
COPY www /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Containers run nginx with global directives and daemon off
ENTRYPOINT ["nginx", "-g", "daemon off;"]
