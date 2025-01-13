FROM node:18
WORKDIR /app
COPY app/package*.json /app/
RUN npm install
RUN npm install -g @angular/cli
COPY app/ /app/
# Configuração para evitar erro OpenSSL
ENV NODE_OPTIONS=--openssl-legacy-provider
RUN npm run build --prod
RUN npm install -g http-server
CMD ["http-server", "dist"]
