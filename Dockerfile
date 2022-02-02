FROM node:14.16.0
COPY package.json package-lock.json ./
RUN npm install
RUN npm node-sass
COPY . .
EXPOSE 80
EXPOSE 1234
CMD ["npm", "start"]