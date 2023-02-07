FROM node:15
WORKDIR /app
COPY package.json .
RUN npm install
COPY . ./
# EXPOSE 5001
ENV PORT 5001
EXPOSE $PORT
# CMD ["node", "index.js"] ## changed to below after intro of volumes
# CMD ["npm", "run", "dev"] ## switched to belo with control of evnvironments using docker-compose
CMD ["node", "index.js"]



