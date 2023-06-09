FROM node:16

WORKDIR /usr/src/app

COPY . .

RUN npm ci
RUN npm run build

CMD ["npx", "serve", "-s", "-l", "5000", "build"]