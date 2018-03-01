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
  writingID int,
  writingAnswer varchar(1500) NOT NULL,
  FOREIGN KEY (writingID) REFERENCES writing_assesment(writingID),
  FOREIGN KEY (studentID) REFERENCES registration(studentID)
);

CREATE TABLE mind_assesment(
  mindID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  m_questions varchar(255) NOT NULL
);

INSERT INTO mind_assesment(m_questions) VALUES ("Am the life of the party.");
INSERT INTO mind_assesment(m_questions) VALUES ("Feel little concern for others.");
INSERT INTO mind_assesment(m_questions) VALUES ("Am always prepared.");
INSERT INTO mind_assesment(m_questions) VALUES ("Get stressed out easily.");
INSERT INTO mind_assesment(m_questions) VALUES ("Have a rich vocabulary.");
INSERT INTO mind_assesment(m_questions) VALUES ("Don't talk a lot");
INSERT INTO mind_assesment(m_questions) VALUES ("Am interested in people");
INSERT INTO mind_assesment(m_questions) VALUES ("Leave my belongings around.");
INSERT INTO mind_assesment(m_questions) VALUES ("Am relaxed most of the time.");
INSERT INTO mind_assesment(m_questions) VALUES ("Have difficulty understanding abstract ideas.");
INSERT INTO mind_assesment(m_questions) VALUES ("Feel comfortable around people.");
INSERT INTO mind_assesment(m_questions) VALUES ("Insult people.");
INSERT INTO mind_assesment(m_questions) VALUES ("Pay attention to details.");
INSERT INTO mind_assesment(m_questions) VALUES ("Worry about things.");
INSERT INTO mind_assesment(m_questions) VALUES ("Have a vivid imagination.");
INSERT INTO mind_assesment(m_questions) VALUES ("Keep in the background.");
INSERT INTO mind_assesment(m_questions) VALUES ("Sympathize with others' feelings.");
INSERT INTO mind_assesment(m_questions) VALUES ("Make a mess of things.");
INSERT INTO mind_assesment(m_questions) VALUES ("Seldom feel blue.");
INSERT INTO mind_assesment(m_questions) VALUES ("Am not interested in abstract ideas.");
INSERT INTO mind_assesment(m_questions) VALUES ("Start conversations.");
INSERT INTO mind_assesment(m_questions) VALUES ("Am not interested in other people's problems.");
INSERT INTO mind_assesment(m_questions) VALUES ("Get chores done right away");
INSERT INTO mind_assesment(m_questions) VALUES ("Am easily disturbed.");
INSERT INTO mind_assesment(m_questions) VALUES ("Have excellent ideas.");
INSERT INTO mind_assesment(m_questions) VALUES ("Have little to say.");
INSERT INTO mind_assesment(m_questions) VALUES ("Have a soft heart");
INSERT INTO mind_assesment(m_questions) VALUES ("Often forget to put things back in their proper place.");
INSERT INTO mind_assesment(m_questions) VALUES ("Get upset easily.");
INSERT INTO mind_assesment(m_questions) VALUES ("Get upset easily.");
INSERT INTO mind_assesment(m_questions) VALUES ("Talk to a lot of different people at parties.");
INSERT INTO mind_assesment(m_questions) VALUES ("Am not really interested in others.");
INSERT INTO mind_assesment(m_questions) VALUES ("Like order.");
INSERT INTO mind_assesment(m_questions) VALUES ("Change my mood a lot.");
INSERT INTO mind_assesment(m_questions) VALUES ("Am quick to understand things.");
INSERT INTO mind_assesment(m_questions) VALUES ("Don't like to draw attention to myself.");
INSERT INTO mind_assesment(m_questions) VALUES ("Take time out for others.");
INSERT INTO mind_assesment(m_questions) VALUES ("Shirk my duties.");
INSERT INTO mind_assesment(m_questions) VALUES ("Have frequent mood swings.");
INSERT INTO mind_assesment(m_questions) VALUES ("Use difficult words.");
INSERT INTO mind_assesment(m_questions) VALUES ("Don't mind being the center of attention.");
INSERT INTO mind_assesment(m_questions) VALUES ("Feel others' emotions.");
INSERT INTO mind_assesment(m_questions) VALUES ("Follow a schedule.");
INSERT INTO mind_assesment(m_questions) VALUES ("Get irritated easily.");
INSERT INTO mind_assesment(m_questions) VALUES ("Spend time reflecting on things.");
INSERT INTO mind_assesment(m_questions) VALUES ("Am quiet around strangers.");
INSERT INTO mind_assesment(m_questions) VALUES ("Make people feel at ease.");
INSERT INTO mind_assesment(m_questions) VALUES ("Am exacting in my work.");
INSERT INTO mind_assesment(m_questions) VALUES ("Am exacting in my work.");
INSERT INTO mind_assesment(m_questions) VALUES ("Am full of ideas.");

CREATE TABLE user_mind_assesment(
  user_mind_assesmentID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  studentID int,
  mindID int,
  mindAnswer int(5) NOT NULL,
  FOREIGN KEY (mindID) REFERENCES mind_assesment(mindID),
  FOREIGN KEY (studentID) REFERENCES registration(studentID)
);

CREATE TABLE analytical_assesment(
  analyticalID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  a_questions varchar(500) NOT NULL,
  image nvarchar(500)
);

INSERT INTO analytical_assesment(a_questions) VALUES ('Gabriela is jumping rope.\n A) Gabriela is on the jumping rope team during the summer.\n b) Gabriela is in the gym c) Jumping rope occurs in the gym during the summer.\n d) All the kids in the gym are jumping rope.');
INSERT INTO analytical_assesment(a_questions) VALUES ('Jorge runs faster than Gabe.\n Lily runs faster than Jorge.\n Gabe runs faster than Lily. \nWho runs the fastest?');
INSERT INTO analytical_assesment(a_questions) VALUES ('Santiago lives on the floor below Javier.\n Sophie lives on the floor above Rosa.\n Rosa is on the floor below Santiago.\n Javier Lives with Lucas.\n Omar lives on the top floor.\n Who lives on the bottom floor?');
INSERT INTO analytical_assesment(a_questions) VALUES ('In the above question who else shares an apartment?');
INSERT INTO analytical_assesment(a_questions) VALUES ('A race contains 5 bikers. Biker A beat Biker B but not biker C Biker D was beat by Biker E but beat Biker C. \n Who came last?');
INSERT INTO analytical_assesment(a_questions, image) VALUES ('Look carefully at the sequence of symbols to find the patter. Select correct pattern', "https://drive.google.com/file/d/1lgvi5pYxUMtFcvus_6F2OMQVo2Zayaxo/view?usp=sharing");
INSERT INTO analytical_assesment(a_questions) VALUES ('Joe is younger than Kathy. Mark was born after Joe. Kathy is older than Mark. If the first two statements are true, the third statement is.');
INSERT INTO analytical_assesment(a_questions, image) VALUES ('Look carefully at the sequence of symbols to find the pattern. Select correct pattern.', 'https://drive.google.com/file/d/1QUs8fOJx27pEgZICTYKIgBUwnkOPbmLB/view?usp=sharing');
INSERT INTO analytical_assesment(a_questions) VALUES ('A squirrel eats 8 nuts in 8 minutes. How long will it take for 32 squirrels to eat 32 nuts?');
INSERT INTO analytical_assesment(a_questions) VALUES ('In a class of 78 students 41 are taking French, 22 are taking German. Of the students taking French or German, 9 are taking both courses. How many students are not enrolled in either course?');
INSERT INTO analytical_assesment(a_questions) VALUES ('If a man and a half can eat a hot dog and a half in a minute and a half, how long would it take six men to eat six hot dogs?');
INSERT INTO analytical_assesment(a_questions) VALUES ('How many times do the hands of a clock overlap in 24 hours?');
INSERT INTO analytical_assesment(a_questions) VALUES ('The ages of a mother and her son that just graduated from collage add up to 66. The mother’s age is the son’s age reversed. How old are they?');
INSERT INTO analytical_assesment(a_questions) VALUES ('Look at this series: 22, 21, 23, 22, 24, 23, ... What number should come next?');
INSERT INTO analytical_assesment(a_questions) VALUES ('A man ate 9 pounds of food in 5 days. If he eats at the same rate, how many days will it take him to eat 45 pounds?');
INSERT INTO analytical_assesment(a_questions) VALUES ('Maribel worked 10 hours on Sunday, 8 hours a day for the next 3 days and 6 hours on Thursday completing the week. For her 5 days of work she was paid 640 pesos. How many pesos did she earn per hour?');
INSERT INTO analytical_assesment(a_questions) VALUES ('6 people take 6 minutes to make 6 baskets, how long would it take 100 people to make 100 baskets.');
INSERT INTO analytical_assesment(a_questions) VALUES ('Look at this series: 53, 53, 40, 40, 27, 27, ... What number should come next?');
INSERT INTO analytical_assesment(a_questions) VALUES ('50 climbers started up a mountain. a) 20 climbers made it less than halfway. b) 10 climbers failed to start. c) 30 climbers reached more than halfway d) 40 climbers made it to the top.');
INSERT INTO analytical_assesment(a_questions) VALUES ('There are 4 birds sitting on a fence. From left to right are birds A,B,C and D. During a brief storm A changes places with C and then C changes places with B. Which bird is now at the left end of the row?');
INSERT INTO analytical_assesment(a_questions) VALUES ('In the above question who is to the right of bird C?');
INSERT INTO analytical_assesment(a_questions) VALUES ('On the football field, there is a bare spot. The bare spot doubles in size everyday. If it takes 48 days for the bare spot to cover the field, how long would it take for the bare spot to cover half the field?');
INSERT INTO analytical_assesment(a_questions) VALUES ('Fact 1:	Islands are surrounded by water.Fact 2:	Maui is an island.Fact 3:	Maui was formed by a volcano. If the first three statements are facts, which of the following statements must also be a fact? It can be more than one fact. I:Maui is surrounded by water. II:All islands are formed by volcanoes. III:All volcanoes are on islands.');
INSERT INTO analytical_assesment(a_questions) VALUES ('6 people work on different floors. Diego is on the floor right above Ale. Vicky is on a floor right below Regina. Regina is on the floor right above Diego. Ale is on the same floor with Laura . Mia is on the lowest floor. Who is on the topmost floor?');
INSERT INTO analytical_assesment(a_questions) VALUES ('In the above question which two others share a floor?');
INSERT INTO analytical_assesment(a_questions) VALUES ('Runners Alex, Abi, Juan, Mike, Jaqi ran a foot race. Alex lost to Abi but beat Juan. Mike beat Jaqi but failed to beat Juan. Which runner won the race?');
INSERT INTO analytical_assesment(a_questions) VALUES ('In the above question which runner came in second-last');
INSERT INTO analytical_assesment(a_questions) VALUES ('Each helper can make either 2 large cakes per hour, or 35 small cakes per hour. The kitchen is available for 3 hours and 20 large cakes and 700 small cakes are needed. How many helpers are required?');
INSERT INTO analytical_assesment(a_questions) VALUES ('Half the people on a bus get off at each stop after the first, and no one gets on after the first stop. If only one person gets off at stop number 7, how many people got on at the first stop?');
INSERT INTO analytical_assesment(a_questions) VALUES ('The price tag on a hat is X pesos. The store is offering a discount of 15%. Store employees get an additional 10% off on the discounted price. In terms of X, what will the employee pay?');
INSERT INTO analytical_assesment(a_questions) VALUES ('12 litres of water are poured into an aquarium of dimensions 50cm length, 30cm breadth, and 40cm height. How high (in cm) will the water rise?(1 litre = 1000cm³)');
INSERT INTO analytical_assesment(a_questions) VALUES ('After being dropped a certain ball always bounces back to 2/5 of the height of its previous bounce. After the first bounce it reaches a height of 125 inches. How high (in inches) will it reach after its fourth bounce?');
INSERT INTO analytical_assesment(a_questions, image) VALUES ('Count the number of triangles and squares in the given figure', "https://drive.google.com/file/d/1W8JgKGKw0oiwcrFH4TukIakoZnilgOV9/view?usp=sharing");
INSERT INTO analytical_assesment(a_questions) VALUES ('At the baseball game, Henry was sitting in seat 253. Marla was sitting to the right of Henry in seat 254. In the seat to the left of Henry was George. Inez was sitting to the left of George. Which seat is Inez sitting in?');
INSERT INTO analytical_assesment(a_questions) VALUES ('If: malgauper means peach cobbler malgaport means peach juicemoggagrop means apple jelly Which word could mean "apple juice"?');
INSERT INTO analytical_assesment(a_questions) VALUES ('All the trees in the park are flowering trees.Some of the trees in the park are cherry blossoms. All cherry blossoms in the park are flowering trees. If the first two statements are true, the third statement is');
INSERT INTO analytical_assesment(a_questions) VALUES ('What is the continuation of the sequence: ZA5, Y4B, XC6, W3D');
INSERT INTO analytical_assesment(a_questions) VALUES ('Linda has three dogs. Spot is bigger than King and smaller than Sugar. Ralph is smaller than Sugar and bigger than Spot. King is bigger than Ralph. If the first two statements are true, the third statement is');
INSERT INTO analytical_assesment(a_questions) VALUES ('Without resolving anything yourself choose the conclusion which logically follows from the given statements. To pass the examination, one must work hard.');
INSERT INTO analytical_assesment(a_questions) VALUES ('From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done?');
INSERT INTO analytical_assesment(a_questions) VALUES ("A four-person crew from Classic Colors is painting Mr. Field's house. Michael is painting the front of the house. Ross is in the alley behind the house painting the back. Jed is painting the window frames on the north side, Shawn is on the south. If Michael switches places with Jed, and Jed then switches places with Shawn, where is Shawn?");
INSERT INTO analytical_assesment(a_questions, image) VALUES ('Look carefully at the sequence of symbols to find the pattern. Select correct pattern.', "https://drive.google.com/file/d/1oT73bdsZxVienKLQKiVXRNoFmaIojeFQ/view?usp=sharing");
INSERT INTO analytical_assesment(a_questions) VALUES ('Danielle has been visiting friends in Ridge-wood for the past two weeks. She is leaving tomorrow morning and her flight is very early. Most of her friends live fairly close to the airport. Madison lives ten miles away. Frances lives five miles away, Samantha, seven miles. Alexis is farther away than Frances, but closer than Samantha. Approximately how far away from the airport is Alexis?');
INSERT INTO analytical_assesment(a_questions, image) VALUES ('Find the number of triangles in the given figure', "https://drive.google.com/file/d/1PfLBCAk7ix42PFxq-Es7ECsaCLbfxOsH/view?usp=sharing");

CREATE TABLE analyticalAnswers(
  analyticalAsnswersID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  analyticalID int,
  options varchar(1500),
  validAnswers int(1),
  FOREIGN KEY (analyticalID) REFERENCES analytical_assesment(analyticalID)
);

INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (1, 'A and B\n B and D\n C and D\n D and A\n I dont know', 2);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (2, 'Jorge\n Gabe\n Lily \n I dont know',0);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (3, 'Rosa\n Santiago\n Javier\n Omar\n Sophie\n I dont know', 0);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (4, 'Santiago & Sophie\n Rosa & Omar\n Santiago & Omar\n Rosa & Sophie\n I dont know', 0);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (5, 'Biker A\n Biker B\n Biker C\n Biker D\nBiker E\n I dont know',1);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (6, '1\n2\n3\n4\nI dont know', 3);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (7, 'True\n False \n I dont know', 0);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (8, '1\n2\n3\n4\nI dont know', 2);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (9, '1\n2\n3\n4\nI dont know', 0);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (10, '6\n15\n24\n33\n54\nI dont know', 2);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (11, '2 minutes\n5 minutes\n30 seconds\n1.5 minutes\nI dont know', 3);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (12, '24\n12\n22\n16\nI dont know', 2);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (13, '42 and 24\n51 and 15\n54 and 22\nI dont know', 0);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (14, '22\n24\n25\n26\nI dont know', 2);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (15, '10\n20\n22.5\n25\nI dont know', 3);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (16,'18\n20\n16\n12.5\nI dont know', 2);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (17,'6\n60\n100\n600\nI dont know', 0);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (18, '12\n14\n27\n53\nI dont know', 1);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (19,'A and B\nB and D\nA and C\nC and D\nI dont know', 2);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (20, 'Bird A\nBird B\nBird C\nBird D\nI dont know',1);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (21, 'Bird A\nBird B\nBird D\nNo bird\nI dont know', 0);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (22, '20 days\n24 days\n27 days\n47 days\nI dont know', 4);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (23, 'I only\nII only\nII and III only\nNone of the statements is a known fact\nI dont know', 0);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (24, 'Diego\nAle\nVicky\nRegina\nMia\nI dont know', 3);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (25,'Diego & Vicky\nRegina & Mia\nDiego & Mia\nVicky & Regina\nI dont know', 0);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (26, 'Alex\nAbi\nJuan\nMike\nJaqi\nI dont know', 1);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (27, 'Alex\nAbi\nJuan\nMike\nJaqi\nI dont know', 3);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (28, '10\n15\n20\n25\n30\nI dont know', 0);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (29, '128\n64\n32\n16\n8\nI dont know', 1);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (30, '75x\n.76x\n.765x\n.775\n805x\nI dont know', 2);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (31, '6\n8\n10\n20\n40\nI dont know', 1);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (32, '20\n15\n8\n5\n3.2\nI dont know', 2);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (33, '36 triangles, 7 squares\n38 triangles, 9 squares\n40 triangles, 7 squares\n42 triangles, 9 squares\nI dont know', 2);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (34, '251\n254\n255\n256\nI dont know', 0);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (35, 'moggaport\nmalgaauper\ngropport\nmoggagrop\nI dont know', 0);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (36, 'True\nFalse\nUncertain\nI dont know', 0);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (37, 'E7V\nV2E\nVE5\nVE7\nI dont know', 3);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (38, 'True\nFalse\nUncertain\nI dont know', 1);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (39, 'Examination is related with hard work.\nAll those who work hard, pass.\nExamination causes some anxiety and those who work hard overcome it.\nWithout hard work, one does not pass.\nHard-working person is a satisfied person.\nI dont know', 3);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (40, '564\n645\n735\n756\nNone of these\nI dont know', 3);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (41, 'In the alley behind the house\nOn the north side of the house\nIn front of the house\nI dont know', 2);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (42, '1\n2\n3\n4\nI dont know', 2);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (43, '9 miles\n7 miles\n8 miles\n6 miles\nI dont know', 3);
INSERT INTO analyticalAnswers(analyticalID, options, validAnswers) VALUES (44, '18\n20\n24\n27\nI dont know', 2);
