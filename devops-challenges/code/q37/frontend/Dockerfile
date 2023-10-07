FROM node:18-alpine

WORKDIR /app
COPY src/package*.json ./
RUN npm install
RUN npm install -g serve
COPY . .

EXPOSE 3000

CMD ["serve", "-s", "src", "-l", "3000"]
