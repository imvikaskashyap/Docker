FROM node:20-alpine3.18

WORKDIR /app
# COPY package.json .
# COPY package-lock.json .

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 8000

CMD ["npm", "start"]