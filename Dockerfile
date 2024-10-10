FROM node:20-alpine3.18
WORKDIR /app
COPY . ./app

RUN npm i -g @angular/cli@18.2.0
RUN npm i

CMD ["ng", "serve", "--host", "0.0.0.0"]