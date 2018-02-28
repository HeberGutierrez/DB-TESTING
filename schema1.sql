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
  test_type varchar(50)
);

 CREATE TABLE mind_assesment (
   mind_assesment_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
   question varchar(255) NOT NULL,
   testID int,
   FOREIGN KEY (testID) REFERENCES test(testID)
 );

 CREATE TABLE analytical_assesment (
  analytical_assesment_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
   testID int,
   question_2 varchar(255) NOT NULL,
   FOREIGN KEY (testID) REFERENCES test(testID)
 );

 CREATE TABLE reading_assesment (
   reading_assesment_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
   testID int,
   question_3 varchar(255) NOT NULL,
   FOREIGN KEY (testID) REFERENCES test(testID)
 );

 CREATE TABLE writing_assesment (
   writing_assesment_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
   testID int,
   question_4 varchar(255) NOT NULL,
   FOREIGN KEY (testID) REFERENCES test(testID)
 );

CREATE TABLE user_mind_assesment(
  user_mind_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  studentID int,
  mind_assesment_ID int,
  answer int(5) NOT NULL,
  FOREIGN KEY (studentID) REFERENCES registration(studentID),
  FOREIGN KEY (mind_assesment_ID) REFERENCES mind_assesment(mind_assesment_ID)
);

CREATE TABLE user_analytical_assesment(
  user_analytical_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  studentID int,
  analytical_assesment_ID int,
  answer_2 varchar(1) NOT NULL,
  FOREIGN KEY (studentID) REFERENCES registration(studentID),
  FOREIGN KEY (analytical_assesment_ID) REFERENCES analytical_assesment(analytical_assesment_ID)
);

CREATE TABLE user_reading_assesment(
  user_reading_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  studentID int,
  reading_assesment_ID int,
  answer_3 varchar(1) NOT NULL,
  FOREIGN KEY (studentID) REFERENCES registration(studentID),
  FOREIGN KEY (reading_assesment_ID) REFERENCES reading_assesment(reading_assesment_ID)
);

CREATE TABLE user_writing_assesment(
  user_writing_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  studentID int,
  writing_assesment_ID int,
  answer_4 varchar(255) NOT NULL,
  FOREIGN KEY (studentID) REFERENCES registration(studentID),
  FOREIGN KEY (writing_assesment_ID) REFERENCES writing_assesment(writing_assesment_ID)
);

CREATE TABLE answers_mind_assesment (
  answers_mind_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  valid_choice varchar(5) NOT NULL,
  mind_assesment_ID int,
  FOREIGN KEY (mind_assesment_ID) REFERENCES mind_assesment(mind_assesment_ID)
);

CREATE TABLE answers_analytical_assesment (
  answers_analytical_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  valid_choice_2 varchar(5) NOT NULL,
  analytical_assesment_ID int,
  FOREIGN KEY (analytical_assesment_ID) REFERENCES analytical_assesment(analytical_assesment_ID)
);

CREATE TABLE answers_reading_assesment (
  answers_reading_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  valid_choice_3 varchar(5) NOT NULL,
  reading_assesment_ID int,
  FOREIGN KEY (reading_assesment_ID) REFERENCES reading_assesment(reading_assesment_ID)
);

CREATE TABLE answers_writing_assesment (
  answers_writing_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  valid_choice varchar(5) NOT NULL,
  writing_assesment_ID int,
  FOREIGN KEY (writing_assesment_ID) REFERENCES writing_assesment(writing_assesment_ID)
);

CREATE TABLE user_test (
  user_test_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  studentID int,
  testID int,
  FOREIGN KEY (studentID) REFERENCES registration(studentID),
  FOREIGN KEY (testID) REFERENCES test(testID)
);

INSERT INTO username (email, password) VALUES ("daninor769@hanmail.net", "hollywood");
INSERT INTO registration (email, password, name, last_name, nickname, phone, birthdate, gender, nationality, identification, education_level, coding_experience, personal_reference, holacode_discovery, commitment) VALUES ("juanitabanana@anana.fr", "anana", "Juanita", "Banana", "Chanita", 559143346752, '1997-05-03', "female", "Irken", "alien", "some university", "nothing", "nothing", "friend", "yes");
INSERT INTO registration (email, password, name, last_Name, nickname, phone, birthdate, gender, nationality, identification, education_level, coding_experience, personal_reference, holacode_discovery, commitment) VALUES ("daninor769@hanmail.net", "hollywood", "Dani", "Noriega", "Dani", 55916008800, '2007-02-05', "prefer not to say", "Mexican", "dreamer", "some high school", "basic", "Bob", "flyer", "yes");
INSERT INTO test(test_type) VALUES ("mind assesment");
INSERT INTO test(test_type) VALUES ("analytical assesment");
INSERT INTO test(test_type) VALUES ("reading comprehension");
INSERT INTO test(test_type) VALUES ("reading comprehension:open questions");
INSERT INTO mind_assesment(question, testID) VALUES ("Am the life of the party.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Feel little concern for others.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Am always prepared.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Get stressed out easily.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Have a rich vocabulary.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Don't talk a lot", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Am interested in people", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Leave my belongings around.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Am relaxed most of the time.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Have difficulty understanding abstract ideas.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Feel comfortable around people.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Insult people.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Pay attention to details.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Worry about things.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Have a vivid imagination.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Keep in the background.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Sympathize with others' feelings.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Make a mess of things.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Seldom feel blue.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Am not interested in abstract ideas.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Start conversations.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Am not interested in other people's problems.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Get chores done right away", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Am easily disturbed.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Have excellent ideas.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Have little to say.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Have a soft heart", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Often forget to put things back in their proper place.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Get upset easily.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Get upset easily.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Talk to a lot of different people at parties.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Am not really interested in others.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Like order.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Change my mood a lot.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Am quick to understand things.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Don't like to draw attention to myself.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Take time out for others.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Shirk my duties.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Have frequent mood swings.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Use difficult words.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Don't mind being the center of attention.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Feel others' emotions.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Follow a schedule.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Get irritated easily.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Spend time reflecting on things.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Am quiet around strangers.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Make people feel at ease.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Am exacting in my work.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Am exacting in my work.", 1);
INSERT INTO mind_assesment(question, testID) VALUES ("Am full of ideas.", 1);
