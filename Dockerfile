FROM nginx:1.32.0
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]