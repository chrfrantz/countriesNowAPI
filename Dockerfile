FROM nikolaik/python-nodejs

WORKDIR /usr/src/app

COPY ./bin /usr/src/app/bin
COPY ./config /usr/src/app/config
COPY ./controllers /usr/src/app/controllers
COPY ./docs /usr/src/app/docs
COPY ./helpers /usr/src/app/helpers
COPY ./middlewares /usr/src/app/middlewares
COPY ./model /usr/src/app/model
COPY ./public /usr/src/app/public
COPY ./routes /usr/src/app/routes
COPY ./services /usr/src/app/services
COPY ./swagger /usr/src/app/swagger
COPY ./test /usr/src/app/test
COPY ./views /usr/src/app/views
COPY .deepsource.toml ./
COPY .env ./
COPY .eslintrc.js ./
COPY .gitignore ./
COPY app.js ./
COPY LICENSE ./
COPY Makefile ./
COPY package*.json ./
COPY Procfile ./
COPY readme.md ./

RUN npm i
# If you are building your code for production
# RUN npm ci --omit=dev

#COPY . .

EXPOSE 3000
CMD [ "npm", "start" ]
