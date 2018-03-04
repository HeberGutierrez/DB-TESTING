// server.js

// set up ======================================================================
// get all the tools we need
var express = require('express');
var app = express();
var port = process.env.PORT || 3005;
var mongoose = require('mongoose');
var passport = require('passport');
var flash = require('connect-flash');

var morgan = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var session = require('express-session');

var configDB = require('../config/database.js');
var database = require('../sql_Database/data.js');

var debug = require('debug')('express-react:server');

// configuration databases ===============================================================
mongoose.connect(configDB.url); // connect to our database mongo

//================================
require('../config/passport')(passport); // pass passport for configuration



// set up our express application
app.use(morgan('dev')); // log every request to the console
app.use(cookieParser()); // read cookies (needed for auth)
app.use(bodyParser.json()); // get information from html forms
app.use(bodyParser.urlencoded({
  extended: true
}));

app.set('view engine', 'ejs'); // set up ejs for templating

// required for passport
app.use(session({
  secret: 'ilovecodingcodingcodingcoding', // session secret
  resave: true,
  saveUninitialized: true
}));
app.use(passport.initialize());
app.use(passport.session()); // persistent login sessions
app.use(flash()); // use connect-flash for flash messages stored in session

// mysql config ================================================================
app.use(express.static(__dirname + '../config/'));

app.get('/public/src/components/assesments', function(req, res){
  database.selectMindQ((err, results) => {
    if(err){
      console.log("error hitting mind assesment db");
      res.sendStatus(500);
    }else {
      console.log('works');
      res.status(200).json(results);
    }
  })
});

app.get('/public/src/components/assesments', function(req, res){
  database.selectReadingQ((err, results)  => {
    if(err){
      console.log('error hitting reading assesment db');
      res.sendStatus(500);
    }else {
      res.status(200).json(results);
    }
  })
});

app.get('/public/src/components/assesments', function(req, res){
  database.selectWrittenQ((err, results)  => {
    if(err){
      console.log('error hitting written assesment db');
      res.sendStatus(500);
    }else {
      res.send(200).json(results);
    }
  })
});

app.get('/public/src/components/assesments', function(req, res){
  database.selectAnalyticalQ((err, results)  => {
    if (err) {
      console.log('error hitting analytical assesment db');
      res.sendStatus(500);
    }else {
      res.send(200).json(results);
    }
  })
});


// routes ======================================================================
require('../server/routes/index.js')(app, passport); // load our routes and pass in our app and fully configured passport

// launch ======================================================================
app.listen(port);
console.log('The magic happens on port ' + port);
