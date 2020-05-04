FROM node:10

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

ENV SKIP_PREFLIGHT_CHECK=true

# build app for production with minification
# RUN npm run build

EXPOSE "$PORT"


CMD [ "npm", "start" ]