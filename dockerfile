# Usar uma imagem base oficial do Node.js
FROM node:16

# Diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copiar package.json e package-lock.json
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar todo o código da aplicação para o container
COPY . .

# Expor a porta 3000
EXPOSE 3000

# Comando para rodar o servidor
CMD ["npm", "start"]
