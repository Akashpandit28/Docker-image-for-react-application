FROM node:current-alpine
WORKDIR /app

COPY package*.json ./phtos
RUN yarn install

COPY . .
CMD ["yarn", "start"]