FROM node:14

# Create app directory
WORKDIR /home/ubuntu/mlajan_service/merchent_info

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
RUN npm install express
RUN npm i @babel/parser
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 2000
CMD [ "npm", "start" ]
