DROP DATABASE IF EXISTS test;

CREATE DATABASE test;

USE test;

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

CREATE TABLE reading_assesment (
  readingID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  r_questions varchar(500) NOT NULL
);

INSERT INTO reading_assesment(r_questions) VALUES ("Which of the following best describes the organization of this passage?");
INSERT INTO reading_assesment(r_questions) VALUES ("The passage discusses all of the following solutions to password fatigue EXCEPT");
INSERT INTO reading_assesment(r_questions) VALUES ("As used in paragraph 3, which is the best synonym for migrate?");
INSERT INTO reading_assesment(r_questions) VALUES ("According to the passage, SSO authentication software may be safer than password management software because I. stolen personal computers contain passwords memorized by a user’s web browser II. if a user of password management software forgets his or her login credentials, the user can no longer access any of the applications protected by the password III. hackers who access password management software can gain access to all of the applications protected by that password");
INSERT INTO reading_assesment(r_questions) VALUES ("Which of the following statements from the passage represents an opinion, as opposed to a fact?");
INSERT INTO reading_assesment(r_questions) VALUES ("In paragraph 6, the author notes that “the use of biometrics raises ethical questions concerning privacy. Which of the following situations could be used as an example to illustrate this point?");
INSERT INTO reading_assesment(r_questions) VALUES ("The author’s tone in the final paragraph can best be described as");

CREATE TABLE readingAsnswers (
  readingAsnswersID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  readingID int,
  choices varchar(1500),
  correctAnswer int(1),
  FOREIGN KEY (readingID) REFERENCES reading_assesment(readingID)
);

INSERT INTO readingAsnswers(readingID, choices, correctAnswer) VALUES (1, 'The passage organizes ideas in order of increasing importance.\n The author presents an argument and then uses evidence to dismiss opposing views.\n The author explains a problem, explores solutions, and then dismisses these solutions as inadequate.\n The author explains a problem and then persuades readers to agree with his or her solution to the problem.\n The author explains a problem, contextualizes the problem, and ultimately dismisses it as an unnecessary concern.\n', 2);
INSERT INTO readingAsnswers(readingID, choices, correctAnswer) VALUES (2, 'handwritten lists.\n voice-recognition software.\n keePass.\n using very simple passwords\n intelligent encryption\n', 4);
INSERT INTO readingAsnswers(readingID, choices, correctAnswer) VALUES (3, 'predict.\n postpone.\n investigate.\n lessen.\n complicate.\n', 3);
INSERT INTO readingAsnswers(readingID, choices, correctAnswer) VALUES(4, 'I only.\n II only.\n I and II only.\n II and III only\n I, II and III\n', 4);
INSERT INTO readingAsnswers(readingID, choices, correctAnswer) VALUES(5,'“For people who use email or other internet applications at work, the number of required username/password combinations may surpass 30."\n “The feeling of frustration that results from maintaining a memorized list of login credentials has grown so prevalent that it actually has a name: password fatigue.”\n “Having to remember so many different passwords is irritating, but it can also be dangerous.”\n “Additionally, recovering a forgotten password is only a temporary solution; it does not address the larger problem of password fatigue.”\n “The problems associated with SSO, password management software, and biometrics continue to stimulate software engineers and computer security experts to search for the cure to password fatigue.”',2);
INSERT INTO readingAsnswers(readingID, choices, correctAnswer) VALUES(6, 'A thief steals a personal computer with password management software and gains access to private email accounts, credit card numbers, and bank statements.\n
  An employee at a company uses a voice recognition system to log in to his computer, only to be called away by his boss. While he is away from the computer but still logged in, another employee snoops on his computer and reads personal email correspondence.\n
  A computer hacker gains access to a system that uses SSO software by cracking the password, thus gaining private access to all linked accounts.\n
  A company that employs fingerprint identification security software turns over its database of fingerprints to the local police department when a violent crime occurs on its grounds.\n
  Even when a person is on password-protected websites, an internet browser tracks the person’s internet use and collects information in order to tailor advertisements to his or her interests.', 3);
INSERT INTO readingAsnswers(readingID, choices, correctAnswer) VALUES(7, 'animated\n resigned\n confused\n hopeful\n depressed', 1);

CREATE TABLE writing_assesment(
  writingID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  w_questions varchar(500) NOT NULL
);

INSERT INTO writing_assesment(w_questions) VALUES ("Based on the information in the passage, explain SSO in your own words. What does it stand for? What does it do? What are its advantages and disadvantages? What are some alternatives to SSO?");
INSERT INTO writing_assesment(w_questions) VALUES ("Of the password solutions referenced in the passage, which sounds most appealing to you? How do you currently keep track of all of your passwords? Do you think you should switch to another method? Why or why not?");
INSERT INTO writing_assesment(w_questions) VALUES ("Make some inferences about the author. What do you think is his or her academic or professional background? What type of audience do you think he or she is trying to reach? Which password solution do you think he or she most prefers? Why?");

CREATE TABLE user_writing_assesment(
  user_writing_assesmentID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  studentID int,
  writingAnswer varchar(1500) NOT NULL,
  FOREIGN KEY (studentID) REFERENCES registration(studentID)
);
