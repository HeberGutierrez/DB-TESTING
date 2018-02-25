var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var connect = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Holacode',
  database: 'application_form'
});

// Register
router.get('/register', function(req, res){
  res.render('register')
});
// Login
router.get('/login', function(req, res){
  res.render('login')
});
router.post('/register', function(req, res){
  var name = req.body.name;
  var last_name = req.body.last_name;
  var birthdate = req.body.birthdate;
  var email = req.body.email;
  var password = req.body.password;
  var confirm_password = req.body.password2;
  var cellPhoneNumber = req.body.cellPhoneNumber;
  var gender = req.body.male;
  var gender1 = req.body.female;
  var gender2 = req.body.other;
  var nationnality = req.body.nationality;
  var identification = req.body.identification;
  var education_level = req.body.educationLevel;
  var coding_experience = req.body.codingExperience;
  var personal_information = req.body.personalInformation;
  var holacode_discovery = req.body.holacodeDiscovery;
  var commentmen = req.body.commentmen;

  req.checkBody('name', 'Name is require').notEmpty();
  req.checkBody('last_name', 'Last Name is require').notEmpty();
  req.checkBody('birthdate',).notEmpty();
  req.checkBody('email', 'Email is require').notEmpty();
  req.checkBody('email', 'Email is not valid').isEmail();
  req.checkBody('password', 'Password is require').notEmpty();
  req.checkBody('password2', 'Password do not match').equals(req.body.password);  req.checkBody('cellPhoneNumber', 'Cell Phone is require').notEmpty();
  req.checkBody('male').optional();
  req.checkBody('female').optional();
  req.checkBody('other').optional();
  req.checkBody('nationality').optional();
  req.checkBody('identification').optional();
  req.checkBody('educationLevel').optional();
  req.checkBody('codingExperience').optional();
  req.checkBody('personalInformation').optional();
  req.checkBody('holacodeDiscovery').optional();
  req.checkBody('commentmen').optional();

  var errors = req.validationErrors();

    if(errors){
      res.render('register',{
        errors:errors
      });
    }else {
      console.log('PASSED')
    }
});
module.exports = router;
