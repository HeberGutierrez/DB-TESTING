var sql = require("mysql");
var bcrypt = require("bcryptjs");
var connect = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'application_form'
});


var insertData =function(email, password, name, last_name, nickname, phone, birthdate, gender, nationality, identification, education_level, coding_experience, personal_reference, holacode_discovery, commitment, callback){
  connect.query('INSERT INTO registration (email, password, name, last_name, nickname, phone, birthdate, gender, nationality, identification, education_level, coding_experience, personal_reference, holacode_discovery, commitment) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',
[email, password, name, last_name, nickname, phone, birthdate, gender, nationality, identification, education_level, coding_experience, personal_reference, holacode_discovery, commitment], (err, results)=>{
  if(err){
    console.log('personal info insert error');
    callback(err, null)
  } else {
    console.log('user registered sucessfully user:', results);
    callback(null, results)
  }
})
};
var userWrittenAnswer = function(studentID, writingAnswer){
  connect.query('INSERT INTO user_writing_assesment (studentID, writingAnswer) VALUES (?,?)',
[studentID, writingAnswer] =>{
  if(error){
    console.log('error inserting user written answer');
    callback(err, null)
  }else {
    console.log('answer to open questions stored', results);
    callback(null, results)
  }
})
};
var userMindAnswer = function(studentID, mindAnswer){
  connect.query('INSERT INTO user_mind_assesment (studentID, mindAnswer) VALUES (?,?)',
[studentID, mindAnswer]=>{
  if(error){
    console.log('error inserting mind assesment answers');
    callback(err, null);
  }else {
    console.log('success mind assesment answer is:', results);
    callback(null, results);
  }
})
};

modules.exports = userMindAnswer;
modules.exports = userWrittenAnswer;
modules.exports = insertData;
