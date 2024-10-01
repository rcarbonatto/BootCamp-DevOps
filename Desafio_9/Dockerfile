# Etapa Base (Colocamos la imagen base, el working directory y copiamos la carpeta con el programa a utilizar)
FROM node:22.8.0-alpine AS base

WORKDIR /usr/src/app

# Copiamos los archivos package-lock.json y package.json
COPY ./Desafio_9/nodejs-helloworld-api/package*.json ./
COPY ./Desafio_9/nodejs-helloworld-api/* ./

# Instala dependencias 
RUN npm install

# Exponemos el Puerto que correra la app
EXPOSE 3000:3000

#Comando para Iniciar la APP
CMD ["npm","start"]
