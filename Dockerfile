# Qual a verção -> node na versão alpine que é a mais leve (menor) versão do node
FROM node:alpine

# Diretório na maquina que vai trabalhar
WORKDIR /usr/src/app

# Copiar os arquivos para dentro da máquina do doker pra poder rodar o comando
COPY package*.json ./
RUN npm install

# Copiar todo o resto dos arquivos
COPY . .

# Qual a porta que precisa ser exposta
EXPOSE 3333

# Única por dockerfile indica o que é preciso rodar para startar o projeto (programa) é preciso separar os comandos em arrays
CMD ["npm", "run", "start:dev"]