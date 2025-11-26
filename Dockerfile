FROM node:20-alpine
WORKDIR /app
COPY server.js ./
COPY index.html ./
COPY .env ./
RUN npm install express dotenv --no-save
EXPOSE 3000
CMD ["node", "server.js"]
