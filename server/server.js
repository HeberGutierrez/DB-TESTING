// set up ======================================================================
var express = require('express');
var app = express();
var port = process.env.PORT || 3000;
var mongoose = require('mongoose');
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;
var flash = require('connect-flash');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var session = require('express-session');
var configDB = require('../config/mongodb.js');
var database = require('../sql_Database/data.js');
var debug = require('debug')('express-react:server');
var User = require('../public/models/user.js');
var expressLayouts = require('express-ejs-layouts');
var ejs = require('ejs');
var routes = require('/router/index');
var users = require('/routes/users');
// configuration databases ===============================================================
mongoose.connect(configDB.url); // connect to our database mongo

//MYSQL CONNECTION
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

//================================
// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// set up our express application
app.use(logger('dev')); // log every request to the console
app.use(bodyParser.json()); // get information from html forms
app.use(bodyParser.urlencoded({extended: true}));
app.use(cookieParser()); // read cookies (needed for auth)
app.use(require('express-session')({
  secret: 'ilovecodingcodingcodingcoding', // session secret
  resave: false,
  saveUninitialized: false
}));
app.use(passport.initialize());
app.use(flash()); // use connect-flash for flash messages stored in session
app.use(passport.session()); // persistent login sessions
app.use(express.static(__dirname + 'public'));

app.use('/', routes);

//passport config
passport.use('local-login', new LocalStrategy({
passport.serializeUser(function(user, done) {
  done(null, user.id);
});
// used to deserialize the user
passport.deserializeUser(function(id, done) {
  User.findById(id, function(err, user) {
    done(err, user);
  });
});


// development error handler
catch 404 and forward to error handler
app.use(function(req, res, next) {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
});

if (app.get('env') === 'development') {
    app.use(function(err, req, res, next) {
        res.status(err.status || 500);
        res.render('error', {
            message: err.message,
            error: err
        });
    });
}
// no stacktraces leaked to user
app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
        message: err.message,
        error: {}
    });
});



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

// launch ======================================================================
app.listen(port);
console.log('The magic happens on port ' + port);

// export ======================================================================
module.exports = server;
