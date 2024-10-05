# DockerFile para la implementacion de la App
# Utilizamos Multistage para dejar el build lo mas limpio y liviano posible
#
#Primer Stage
FROM node:18-alpine AS deps
# Seteamos el Directorio de trabajo
WORKDIR /app
# Copiammos el package.json e instalamos npm
COPY package.json ./
RUN npm install

# Segundo Stage
FROM node:18-alpine AS builder
WORKDIR /app
#Copiamos los modulos necesarios al nuevo build y luego todos los archivos de la App
COPY --from=deps /app/node_modules ./node_modules
COPY . .
#Hacemos el Build de la app
RUN npm run build
#Seteamos la variable de ambiente a produccion
ENV NODE_ENV=production
# Instalamos npm solo con lo requerido para produccion y luego limpiamos cache
RUN npm install --only=production \
    && npm cache clean --force

# Tercer Stage   
FROM node:18-alpine AS runner
WORKDIR /app
# Copiamos los archivos necesarios desde el segundo build
# Seteamos los permisos para el usuario node
COPY --from=builder --chown=node:node /app/dist ./dist
COPY --from=builder --chown=node:node /app/node_modules ./node_modules
# Seteamos con que usuario lo vamos a correr par que no corra con Root
USER node
#Ejecutamos
CMD ["node", "dist/main.js"]