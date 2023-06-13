FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME db-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.ntrwp.mongodb.net
ENV MONGODB_USERNAME romainlepoittevin
ENV MONGODB_PASSWORD McwnGDQXvqqTm89T

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]