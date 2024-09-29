# Etapa Base (Colocamos la imagen base, el working directory y copiamos la carpeta con el programa a utilizar)
FROM node:22 AS base

WORKDIR /usr/src/app

# Copiamos los archivos package-lock.json y package.json
COPY ./nodejs-helloworld-api/package.json ./

# Instala dependencias 
RUN npm install --only=production

# Exponemos el Puerto que correra la app
EXPOSE 3000

#Comando para Iniciar la APP
CMD ["npm","start"]
