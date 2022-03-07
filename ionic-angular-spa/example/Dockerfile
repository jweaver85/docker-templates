FROM node:15-alpine AS builder

WORKDIR /app
RUN npm install -g @ionic/cli@6.14.1
RUN npm install -g @angular/cli

COPY package.json .
RUN npm install --include=dev

COPY . .
RUN ionic build



FROM nginx:alpine
# Set working directory to nginx asset directory
WORKDIR ./
# Remove default nginx static assets
#RUN rm -rf ./*
# Copy static assets from builder stage
RUN rm -rf /usr/share/nginx/html/
COPY --from=builder /app/www /usr/share/nginx/html/
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Containers run nginx with global directives and daemon off
ENTRYPOINT ["nginx", "-g", "daemon off;"]
