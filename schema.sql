DROP DATABASE IF EXISTS application_form;

CREATE DATABASE application_form;

USE application_form;

CREATE TABLE username (
  userID int NOT NULL AUTO_INCREMENT,
  email char (50) NOT NULL,
  password char (50) NOT NULL,
  PRIMARY KEY (userID)
);

CREATE TABLE registration (
  studentID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email char (50) NOT NULL,
  password char (50) NOT NULL,
  name char(25) NOT NULL,
  last_name char(25) NOT NULL,
  nickname char(15) Not NULL,
  phone char(20) NOT NULL,
  birthdate date NOT NULL,
  gender char (25) NOT NULL,
  nationality char(50) NOT NULL,
  identification char(50) NOT NULL,
  education_level char(50) NOT NULL,
  coding_experience char(50) NOT NULL,
  personal_reference char(50) NULL,
  holacode_discovery varchar(50) NOT NULL,
  commitment varchar(30) NOT NULL
);

CREATE TABLE test (
  testID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  mind varchar(255) NOT NULL,
  analyticial varchar(255) NOT NULL,
  reading varchar(225) NOT NULL,
  writing varchar(225) NOT NULL
);

CREATE TABLE user_answers(
  user_answers_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  studentID int,
  FOREIGN KEY (studentID) REFERENCES registration(studentID),
  testID int,
  FOREIGN KEY (testID) REFERENCES test(testID)
);

CREATE TABLE valid_answers (
  valid_answers_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  testID int,
  FOREIGN KEY (testID) REFERENCES test(testID),
  valid_choice varchar(1) NOT NULL,
);


CREATE TABLE student_test (
  student_test_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  studentID int,
  FOREIGN KEY (studentID) REFERENCES registration(studentID),
  valid_answers_ID int,
  FOREIGN KEY (valid_answers_ID) REFERENCES valid_answers(valid_answers_ID),
  user_answers_ID int,
  FOREIGN KEY (user_answers_ID) REFERENCES user_answers(user_answers_ID),
  testID int,
  FOREIGN KEY (testID) REFERENCES test(testID),
);

INSERT INTO username (email, password) VALUES ("daninor769@hanmail.net", "hollywood");
INSERT INTO registration (email, password, name, last_name, nickname, phone, birthdate, gender, nationality, identification, education_level, coding_experience, personal_reference, holacode_discovery, commitment) VALUES ("juanitabanana@anana.fr", "anana", "Juanita", "Banana", "Chanita", 559143346752, '1997-05-03', "female", "Irken", "alien", "some university", "nothing", "nothing", "friend", "yes");
INSERT INTO registration (email, password, name, last_Name, nickname, phone, birthdate, gender, nationality, identification, education_level, coding_experience, personal_reference, holacode_discovery, commitment) VALUES ("daninor769@hanmail.net", "hollywood", "Dani", "Noriega", "Dani", 55916008800, '2007-02-05', "prefer not to say", "Mexican", "dreamer", "some high school", "basic", "Bob", "flyer", "yes");
INSERT INTO test (answer) VALUES(1);
INSERT INTO test (answer) VALUES(1);
INSERT INTO test (answer) VALUES(2);
INSERT INTO test (answer) VALUES(3);
INSERT INTO answers (right_answer, testID) VALUES("B and D", 2);
