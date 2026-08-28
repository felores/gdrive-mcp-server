FROM node:20-slim

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

CMD ["node", "dist/index.js"]
