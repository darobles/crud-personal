FROM node:12-alpine
# Adding build tools to make yarn install work on Apple silicon / arm64 machines test
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["nodemon", "src/index.js"]
