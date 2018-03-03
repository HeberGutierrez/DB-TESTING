var sql = require("mysql");

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
    console.log('error inserting personal info');
    callback(null, results)
  }
})
};

var insertAnswerMind =function(answer, callback){
  connect.query('INSERT INTO test (answer, type) VALUES (?, mind)', [answer], (err, results)=>{
    if(err){
      console.log("insert answer error in mind assesment");
      callback(err, null)
    } else {
      callback(null, results)
      console.log("answer taken from mind assesment");
    }
  })
};

var insertAnswerAnalytical = function(answer, callback){
  connect.query('INSERT INTO test (answer, type) VALUES (?, analytical)',
[answer], (err, results)=>{
  if(err){
    console.log('error inserting answer in analytical test');
    callback(err, null);
  } else {
    console.log('success answered analytical test');
    callback(null, results);
  }
})
};
var insertAnswerReading = function(answer, callback){
  connect.query('INSERT INTO test (answer, type) VALUES (?, reading)',
[answer], (err, results)=>{
  if(err){
    console.log('error inserting answer in reading test');
    callback(err, null);
  } else {
    console.log('success answered reading test');
    callback(null, results)
  }
})
};

var insertAnswerComprehension = function(answer, callback){
  connect.query('INSERT INTO test (answer, type) VALUES (?, comprehension)',
[answer], (err, results)=>{
  if(err){
    console.log('error inserting answer in comprehension test');
    callback(err, null);
  } else {
    console.log('success answered comprehension test');
    callback(null, results);
  }
})
};
