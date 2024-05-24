
FROM node:14

WORKDIR /usr/src/app

RUN npm install -g express-generator

RUN express --view=pug cyber-app

WORKDIR /usr/src/app/cyber-app

RUN npm install

#Script que vai definir o express e montar a rota
RUN echo "var express = require('express');\n\
var router = express.Router();\n\
\n\
/* GET home page. */\n\
router.get('/', function(req, res, next) {\n\
  res.send('Hello World!');\n\
});\n\
\n\
module.exports = router;\n" > routes/index.js

EXPOSE 3000

CMD [ "npm", "start" ]
