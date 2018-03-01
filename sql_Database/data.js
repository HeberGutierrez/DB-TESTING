var mysql = require("mysql");
var bcrypt = require("bcryptjs");

var connect = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'application_form'
});

var selectReadingQ =function(callback){
  connect.query('SELECT * FROM reading_assesment', (err, results, fields)=> {
    if(err){
      console.log('reading assesment showing error');
      callback(err, null);
    }else {
      console.log('reading assesment questions');
      callback(null, results);
    }
  })
};

var selectWrittenQ = function(callback){
  connect.query('SELECT * FROM writing_assesment', (err, results, fields) => {
    if(err){
      console.log('witten question showing err');
      callback(err, null);
    }else {
      console.log('written questions');
      callback(null, results);
    }
  })
};

var selectMindQ = function(callback){
  connect.query('SELECT * FROM mind_assesment', (err, results, fields) => {
    if(err){
      console.log('mind assesment showing error');
      callback(err, null);
    }else {
      console.log('showing mind assesment questions');
      callback(null, results);
    }
  })
};

var selectAnalyticalQ = function(callback){
  connect.query('SELECT * FROM analytical_assesment', (err, results, fields) => {
    if(err){
      console.log('analytical assesment question err');
      callback(err, null);
    } else {
      console.log('showing analytical assesment questions');
      callback(null, results);
    }
  })
};

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

var userWrittenAnswer = function(studentID, writingID, writingAnswer){
  connect.query('INSERT INTO user_writing_assesment (studentID, writingID, writingAnswer) VALUES (?, ? ,?)',
[studentID, writingID, writingAnswer], (err, results, fields) =>{
  if(error){
    console.log('error inserting user written answer');
    callback(err, null)
  }else {
    console.log('answer to open questions stored', results);
    callback(null, results)
  }
})
};
var userMindAnswer = function(studentID, mindID, mindAnswer){
  connect.query('INSERT INTO user_mind_assesment (studentID, mindID, mindAnswer) VALUES (?,?,?)',
[studentID, mindID, mindAnswer], (err, results, fields) =>{
  if(error){
    console.log('error inserting mind assesment answers');
    callback(err, null);
  }else {
    console.log('success mind assesment answer is:', results);
    callback(null, results);
  }
})
};

module.exports.selectMindQ = selectMindQ;
module.exports.selectReadingQ = selectReadingQ;
module.exports.selectWrittenQ = selectWrittenQ;
module.exports.selectAnalyticalQ = selectAnalyticalQ;
module.exports.userMindAnswer = userMindAnswer;
module.exports.userWrittenAnswer = userWrittenAnswer;
module.exports.insertData = insertData;
