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
  answer int(150) NOT NULL,
  studentID int,
  FOREIGN KEY (studentID) REFERENCES registration (studentID)
);


CREATE TABLE answers (
  answersID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  right_answer char (50) NOT NULL,
  type char(25),
  testID int,
  FOREIGN KEY (testID) REFERENCES test(testID)
);

CREATE TABLE comparison (
  joinID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  studentID int,
  testID int,
  answersID int,
  FOREIGN KEY (studentID) REFERENCES registration(studentID),
  FOREIGN KEY (testID) REFERENCES test(testID),
  FOREIGN KEY (answersID) REFERENCES answers(answersID)
);

INSERT INTO username (email, password) VALUES ("daninor769@hanmail.net", "hollywood");
INSERT INTO registration (email, password, name, last_name, nickname, phone, birthdate, gender, nationality, identification, education_level, coding_experience, personal_reference, holacode_discovery, commitment) VALUES ("juanitabanana@anana.fr", "anana", "Juanita", "Banana", "Chanita", 559143346752, '1997-05-03', "female", "Irken", "alien", "some university", "nothing", "nothing", "friend", "yes");
INSERT INTO registration (email, password, name, last_Name, nickname, phone, birthdate, gender, nationality, identification, education_level, coding_experience, personal_reference, holacode_discovery, commitment) VALUES ("daninor769@hanmail.net", "hollywood", "Dani", "Noriega", "Dani", 55916008800, '2007-02-05', "prefer not to say", "Mexican", "dreamer", "some high school", "basic", "Bob", "flyer", "yes");
INSERT INTO test (answer) VALUES(1);
INSERT INTO test (answer) VALUES(1);
INSERT INTO test (answer) VALUES(2);
INSERT INTO test (answer) VALUES(3);
INSERT INTO answers (right_answer, testID) VALUES("B and D", 2);
