module exports = routes;
var mysql = require('mysql');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var exphbs = require('express-handlebars');
var expressValidator = require('express-validator');
var flash = require('connect-flash');
var session = require('express-session');
var passport = require('passport');
var LocalStragety = require('passport-local');
var mongo = require('mongodb');
var mongoose = require('mongoose');
var ejs = require('ejs');
var expressLayouts = require('express-ejs-layouts');
var app = express();
//MYSQL CONNECTION

 const mysql = require('mysql');
 const connection = mysql.createConnection({
   host: 'localhost',
   user: 'root',
   password: 'root',
   database: 'application_form'
 });
 connection.connect((err) => {
   if (err) throw err;
   console.log('Connected!');
 });

 mongoose.connect('mongodb://localhost/authentication');
// var db = mongoose.connection;
//
var routes = require('../config/passport.js');
var users = require('../public/models/user.js');

// View Endegine

app.set('view engine', 'ejs');

// BodyParser Middleware
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());

// set static folder
app.use(express.static(path.join(__dirname, './static/js/')));

// Express Session
app.use(session({
  secret: 'secret',
  saveUninitialized: true,
  resave: true
}));

// Passport inint
app.use(passport.initialize());
app.use(passport.session());
app.use(flash());


// Express Validator
app.use(expressValidator({
  errorFormatter: function(param, msg, value) {
    var namespace = param.split('.')
    , root = namespace.shift()
    , fromParam = root;
    while(namespace.length) {
      fromParam += '[' + namespace.shift() + ']'
    }
    return {
      param : fromParam,
      msg : msg,
      value : value
    };
  }
}));

// Global Vars
app.use(function (req, res, next) {
  res.locals.success_msg = req.flash('success_msg');
  res.locals.error_msg = req.flash('error_msg');
  res.locals.error = req.flash('error');
  next();
});

app.use('/', routes);
app.use('/users', user);

app.set('port', (process.env.PORT || 3000));

app.listen(app.get('port'), function(){
  console.log('server start on port' + app.get('port'));
});
