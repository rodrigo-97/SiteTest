# Use a imagem oficial do NGINX
FROM nginx:alpine

# Copia o arquivo index.html para o diretório padrão do NGINX
COPY index.html /usr/share/nginx/html/

# Exponha a porta 80 (padrão do NGINX)
EXPOSE 80

# Comando para iniciar o NGINX (o padrão da imagem oficial)
CMD ["nginx", "-g", "daemon off;"]
