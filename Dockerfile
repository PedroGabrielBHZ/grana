FROM nginx:alpine

# Copiar arquivos estáticos para o diretório de servir do nginx
COPY . /usr/share/nginx/html

# Expor porta 8080 para compatibilidade com Fly.io
EXPOSE 8080

# Copiar arquivo de configuração customizado do nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Iniciar o nginx
CMD ["nginx", "-g", "daemon off;"]
