FROM node:16

ENV REACT_APP_BACKEND_URL http://localhost:8080

WORKDIR /usr/src/app

COPY . .

RUN npm ci
RUN npm run build

CMD ["npx", "serve", "-s", "-l", "5000", "build"]