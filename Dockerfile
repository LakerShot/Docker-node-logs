FROM node

WORKDIR /node-docker-app

COPY package.json /node-docker-app

RUN npm install

COPY . .

ENV PORT 8989

EXPOSE $PORT

CMD ["node", "app.js"]

VOLUME ["/app/data"]