/*
 * @Author: I3han
 */
const express = require('express');
const bodyParser = require('body-parser');
const swaggerJSDoc = require('swagger-jsdoc');
const swaggerUi = require('swagger-ui-express');
const Constants = require("./common/constant");
const config = require('./common/environment.json')[process.env.NODE_ENV || 'local'];

const db = require('./config/connection');
const app = express();

// swagger definition ========================================

var swaggerDefinition = {
  info: {
    title: 'Blog Site API Documentation',
    version: '1.0.0',
    description: 'Documentation for Blog Site backend',
  },
  host: ['localhost:5000'],
  basePath: '/',
  schemes: ["https", "http"]
};

// options for the swagger docs
var options = {
  swaggerDefinition: swaggerDefinition,
  apis: ['./routes/*.js'],
};


// initialize swagger-jsdoc
var swaggerSpec = swaggerJSDoc(options);
app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerSpec));

//============================================================


app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));


app.use((req, res, next) => {
  res.setHeader("Access-Control-Allow-Origin", "*");
  res.setHeader(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );
  res.setHeader(
    "Access-Control-Allow-Methods",
    "GET, POST, PATCH, PUT, DELETE, OPTIONS"
  );
  next();
});

try {
  db.authenticate();
  console.log('Connection has been established successfully.');
} catch (error) {
  console.error('Unable to connect to the database:', error);
}

//Routes
var routes = require('./routes/route')(app);

//Up Sever
var serverDateTime = new Date().toLocaleString('en-US', {
  timeZone: Constants.TIME_ZONE
});

app.listen(config.PORT, () => {
  console.log('\n===========================================================\n>>>  Blog Site API server start on port - ' + config.PORT + '  <<<\n===========================================================\n> Date Time :' + serverDateTime+'\n> Access - http://localhost:' + config.PORT +'/\n> Access to API documentation - http://localhost:' + config.PORT + '/api-docs/\n===========================================================\n');
});
