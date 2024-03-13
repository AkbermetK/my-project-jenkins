FROM nginx:1.32
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]