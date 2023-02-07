FROM node:15
WORKDIR /app
COPY package.json .
RUN npm install
COPY . ./
EXPOSE 5001
# CMD ["node", "index.js"] ## changed to below after intro of volumes
CMD ["npm", "run", "dev"]



