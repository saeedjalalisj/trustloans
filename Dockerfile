FROM node:18-alpine

WORKDIR /app

COPY package*.json /app
COPY pnpm-lock.yaml /app

RUN npm install -g pnpm

RUN pnpm i --prod

COPY docker .

EXPOSE 3000

CMD ["npm", "run", "start:prod"]