// load the things we need
var mongoose = require('mongoose');
var mysql = require('mysql');
var bcrypt = require('bcryptjs');

//MONGODB
mongoose.connect('mongodb://localhost/loginapp');

// define the schema for our user model
var userSchema = mongoose.Schema({
  local: {
    email: String,
    password: String,
  }
});

//MYSQL CONNECTION
var connection = mysql.createConnection({
   host: 'localhost',
   user: 'root',
   password: 'root',
   database: 'application_form'
 });
 connection.connect((err) => {
   if (err) throw err;
   console.log('Connected!');
 });


//BCRYPT OPERATION ======================
// generating a hash
userSchema.methods.generateHash = function(password) {
  return bcrypt.hashSync(password, bcrypt.genSaltSync(8), null);
};
// checking if password is valid
userSchema.methods.validPassword = function(password) {
  return bcrypt.compareSync(password, this.local.password);
};
// create the model for users and expose it to our app
module.exports = mongoose.model('user', userSchema);
