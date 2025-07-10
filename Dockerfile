FROM node:16 as builder

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY . .

FROM node:16

WORKDIR /app

COPY --from=builder /app .

EXPOSE 3000

CMD ["node", "app.js"]


