//correctAnswer should add 1 point, idk is equal to 0.5
var allQuestionsAnalytical = [
  {
    question: "Gabriela is jumping rope. A) Gabriela is on the jumping rope team during the summer. b) Gabriela is in the gym c) Jumping rope occurs in the gym during the summer. d) All the kids in the gym are jumping rope.",
    choices: ["A and B", "B and D", "C and D", "D and A", "I don't know"],
    correctAnswer: 2 //I don't know counts as 0.5 points
  },
  {
    question: "Jorge runs faster than Gabe. Lily runs faster than Jorge. Gabe runs faster than Lily. Who runs the fastest? ",
    choices:["Jorge", "Gabe", "Lily", "I don't know"],
    correctAnswer: 0
  },
  {
    question: "Santiago lives on the floor below Javier. Sophie lives on the floor above Rosa. Rosa is on the floor below Santiago. Javier Lives with Lucas. Omar lives on the top floor. Who lives on the bottom floor?",
    choices: ["Rosa", "Santiago", "Javier", "Omar", "Sophie", "I don't know"],
    correctAnswer: 0
  },
  {
    question: "In the above question who else shares an apartment?",
    choices: ["Santiago & Sophie", "Rosa & Omar", "Santiago & Omar", "Rosa & Sophie", "I don't know"],
    correctAnswer: 0
  },
  {
    question: "A race contains 5 bikers. Biker A beat Biker B but not biker C. Biker D was beat by Biker E but beat Biker C. Who came last? ",
    choices: ["Biker A", "Biker B", "Biker C", "Biker D", "Biker D", "Biker E", "I don't know"],
    correctAnswer: 1
  },
  {
    question:"Look carefully at the sequence of symbols to find the patter. Select correct pattern"
    image:
    choices: ["1", "2", "3", "4", "I don't know"],
    correctAnswer: 3
  },
  {
    question: "Joe is younger than Kathy. Mark was born after Joe. Kathy is older than Mark. If the first two statements are true, the third statement is ",
    choices: ["True", "False", "I don't know"],
    correctAnswer: 0
  },
  {
    question: "Look carefully at the sequence of symbols to find the pattern. Select correct pattern.",
    image:
    choices: ["1", "2", "3", "4", "I don't know"],
    correctAnswer: 2
  },
  {
    question: "A squirrel eats 8 nuts in 8 minutes. How long will it take for 32 squirrels to eat 32 nuts?",
    choices:["1", "2", "3", "4", "I don't know"],
    correctAnswer: 0
  },
  {
    question: "In a class of 78 students 41 are taking French, 22 are taking German. Of the students taking French or German, 9 are taking both courses. How many students are not enrolled in either course?",
    choices:["6", "15", "24", "33", "54"],
    correctAnswer: 2
  },
  {
    question: "If a man and a half can eat a hot dog and a half in a minute and a half, how long would it take six men to eat six hot dogs?",
    choices: ["2 minutes", "5 minutes", "30 seconds", "1.5 minutes", "I don't know"],
    correctAnswer: 3
  },
  {
    question: "How many times do the hands of a clock overlap in 24 hours?",
    choices: ["24", "12", "22", "16"],
    correctAnswer: 2
  },
  {
    question: "The ages of a mother and her son that just graduated from collage add up to 66. The mother’s age is the son’s age reversed. How old are they?",
    choices:["42 and 24", " 51 and 15", "54 and 22", "I don't know"],
    correctAnswer: 0
  },
  {
    question: "Look at this series: 22, 21, 23, 22, 24, 23, ... What number should come next?",
    choices: ["22", "24", "25", "26", "I don't know"],
    correctAnswer: 2
  },
  {
    question: "A man ate 9 pounds of food in 5 days. If he eats at the same rate, how many days will it take him to eat 45 pounds?",
    choices: ["10", "20", "22.5", "25", "I don't know"],
    correctAnswer: 3
  },
  {
    question: "Maribel worked 10 hours on Sunday, 8 hours a day for the next 3 days and 6 hours on Thursday completing the week. For her 5 days of work she was paid 640 pesos. How many pesos did she earn per hour?",
    choices: ["18", "20", "16", "12.5", "I don't know"],
    correctAnswer: 2
  },
  {
    question: "6 people take 6 minutes to make 6 baskets, how long would it take 100 people to make 100 baskets.",
    choices: ["6", "60", "100", "600", "I don't know"],
    correctAnswer: 0
  },
  {
    question: "Look at this series: 53, 53, 40, 40, 27, 27, ... What number should come next?",
    choices: ["12", "14", "27", "53", "I don't know"],
    correctAnswer: 1
  },
  {
    question: "50 climbers started up a mountain. a) 20 climbers made it less than halfway. b) 10 climbers failed to start. c) 30 climbers reached more than halfway d) 40 climbers made it to the top.",
    choices: ["A and B", "B and D", "A and C", "C and D", "I don't know"],
    correctAnswer: 2
  },
  {
    question: "There are 4 birds sitting on a fence. From left to right are birds A,B,C and D. During a brief storm A changes places with C and then C changes places with B. Which bird is now at the left end of the row?",
    choices: ["Bird A", "Bird B", "Bird C", "Bird D", "I don't know"],
    correctAnswer: 1
  },
  {
    question: "In the above question who is to the right of bird C?",
    choices: ["Bird A", "Bird B", "Bird D", "No bird", "I don't know"],
    correctAnswer: 0
  },
  {
    question: "On the football field, there is a bare spot. The bare spot doubles in size everyday. If it takes 48 days for the bare spot to cover the field, how long would it take for the bare spot to cover half the field?",
    choices: ["20 days", "24 days", "27 days", "47 days", "I don't know"],
    correctAnswer: 4
  },
  {
    question: "Fact 1:	Islands are surrounded by water.Fact 2:	Maui is an island.Fact 3:	Maui was formed by a volcano. If the first three statements are facts, which of the following statements must also be a fact? It can be more than one fact. I:Maui is surrounded by water. II:All islands are formed by volcanoes. III:All volcanoes are on islands.",
    choices: ["I only", "II only", "II and III only", "None of the statements is a known fact", "I don't know"],
    correctAnswer: 0
  },
  {
    question: "6 people work on different floors. Diego is on the floor right above Ale. Vicky is on a floor right below Regina. Regina is on the floor right above Diego. Ale is on the same floor with Laura . Mia is on the lowest floor. Who is on the topmost floor?",
    choices: ["Diego", "Ale", "Vicky", "Regina", "Mia", "I don't know"],
    correctAnswer: 3
  },
  {
    question: "In the above question which two others share a floor? ",
    choices: ["Diego & Vicky", "Regina & Mia", "Diego & Mia", "Vicky & Regina", "I don't know"],
    correctAnswer: 0
  },
  {
    question: "Runners Alex, Abi, Juan, Mike, Jaqi ran a foot race. Alex lost to Abi but beat Juan. Mike beat Jaqi but failed to beat Juan. Which runner won the race?",
    choices: ["Alex", "Abi", "Juan", "Mike", "Jaqi", "I don't know"],
    correctAnswer: 1
  },
  {
    question: "In the above question which runner came in second-last",
    choices: ["Alex", "Abi", "Juan", "Mike", "Jaqi", "I don't know"],
    correctAnswer: 3
  },
  {
    question: "Each helper can make either 2 large cakes per hour, or 35 small cakes per hour. The kitchen is available for 3 hours and 20 large cakes and 700 small cakes are needed. How many helpers are required?",
    choices: ["10", "15", "20", "25", "30", "I don't know"],
    correctAnswer: 0
  },
  {
    question: ".Half the people on a bus get off at each stop after the first, and no one gets on after the first stop. If only one person gets off at stop number 7, how many people got on at the first stop?",
    choices: ["128", "64", "32", "16", "8", "I don't know"],
    correctAnswer: 1
  },
  {
    question: "The price tag on a hat is X pesos. The store is offering a discount of 15%. Store employees get an additional 10% off on the discounted price. In terms of X, what will the employee pay?",
    choices: ["75x", ".76x", ".765x", ".775", "805x", "I don't know"],
    correctAnswer: 2
  },
  {
    question: "12 litres of water are poured into an aquarium of dimensions 50cm length, 30cm breadth, and 40cm height. How high (in cm) will the water rise?(1 litre = 1000cm³)",
    choices: ["6", "8", "10", "20", "40", "I don't know"],
    correctAnswer: 1
  },
  {
    question: "After being dropped a certain ball always bounces back to 2/5 of the height of its previous bounce. After the first bounce it reaches a height of 125 inches. How high (in inches) will it reach after its fourth bounce?",
    choices: ["20", "15","8", "5", "3.2"],
    correctAnswer: 2
  },
  {
    question: "Count the number of triangles and squares in the given figure",
    choices: ["36 triangles, 7 squares", "38 triangles, 9 squares", "40 triangles, 7 squares", "42 triangles, 9 squares", "I don't know"],
    correctAnswer: 2
  },
  {
    question: "At the baseball game, Henry was sitting in seat 253. Marla was sitting to the right of Henry in seat 254. In the seat to the left of Henry was George. Inez was sitting to the left of George. Which seat is Inez sitting in?",
    image:
    choices: ["251", "254", "255", "256", "I don't know"],
    correctAnswer: 0
  },
  {
    question: " If: malgauper means peach cobbler malgaport means peach juicemoggagrop means apple jelly Which word could mean \"apple juice\"?",
    choices: ["moggaport", "malgaauper", "gropport", "moggagrop", "I don't know"],
    correctAnswer: 0
  },
  {
    question: " All the trees in the park are flowering trees.Some of the trees in the park are cherry blossoms. All cherry blossoms in the park are flowering trees. If the first two statements are true, the third statement is",
    choices: ["True", "False", "Uncertain", "I don't know"],
    correctAnswer: 0
  },
  {
    question: "What is the continuation of the sequence: ZA5, Y4B, XC6, W3D ",
    choices: ["E7V", "V2E", "VE5", "VE7", "I don't know"],
    correctAnswer: 3
  },
  {
    question: "Linda has three dogs. Spot is bigger than King and smaller than Sugar. Ralph is smaller than Sugar and bigger than Spot. King is bigger than Ralph. If the first two statements are true, the third statement is ",
    choices: ["True", "False", "Uncertain", "I don't know"],
    correctAnswer: 1
  },
  {
    question: "Without resolving anything yourself choose the conclusion which logically follows from the given statements. To pass the examination, one must work hard.",
    choices: ["Examination is related with hard work.", "All those who work hard, pass.", "Examination causes some anxiety and those who work hard overcome it.", "Without hard work, one does not pass.", "Hard-working person is a satisfied person.", "I don't know"],
    correctAnswer: 3
  },
  {
    question: "From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done? ",
    choices: ["564", "645", "735", "756", "None of these", "I don't know"],
    correctAnswer: 3
  },
  {
    question: "A four-person crew from Classic Colors is painting Mr. Field's house. Michael is painting the front of the house. Ross is in the alley behind the house painting the back. Jed is painting the window frames on the north side, Shawn is on the south. If Michael switches places with Jed, and Jed then switches places with Shawn, where is Shawn?",
    choices: ["In the alley behind the house", "On the north side of the house", "In front of the house", "I don't know"],
    correctAnswer: 2
  },
  {
    question: "Look carefully at the sequence of symbols to find the pattern. Select correct pattern. ",
    image:
    choices: ["1", "2", "3", "4", "I don't know"],
    correctAnswer: 2
  },
  {
    question: "Danielle has been visiting friends in Ridge-wood for the past two weeks. She is leaving tomorrow morning and her flight is very early. Most of her friends live fairly close to the airport. Madison lives ten miles away. Frances lives five miles away, Samantha, seven miles. Alexis is farther away than Frances, but closer than Samantha. Approximately how far away from the airport is Alexis?",
    choices: ["9 miles", "7 miles", "8 miles", "6 miles", "I don't know"],
    correctAnswer: 3
  },
  {
    question: "Find the number of triangles in the given figure",
    image:
    choices: ["18", "20", "24", "27", "I don't know"],
    correctAnswer: 2
  },
  {
    paragraph: "At a small company, parking spaces are reserved for the top executives: CEO, president, vice president, secretary, and treasurer with the spaces lined up in that order. The parking lot guard can tell at a glance if the cars are parked correctly by looking at the color of the cars. The cars are yellow, green, purple, red, and blue, and the executives names are Alan, Ben, Christina, David, and Eddy. * The car in the first space is red. * A blue car is parked between the red car and the green car. * The car in the last space is purple. * The secretary drives a yellow car. * Alan's car is parked next to David's. * Eddy drives a green car. * Ben's car is parked between Christina's and Eddy's. * David's car is parked in the last space. Answer the following questions based on the paragraph above."
    questions: [
  {
    question: "Who is the secretary?",
    choices: ["Eddy", "David", "Christina", "Ben", "Alan", "I don't know"],
    correctAnswer: 4
  },
  {
    question: "Who is the CEO",
    choices: ["Eddy", "David", "Christina", "Ben", "Alan", "I don't know"],
    correctAnswer: 2
  },
  {
    question: "What color is the vice-president's car",
    choices: ["Green", "Yellow", "Blue", "Purple", "Red", "I don't know"],
    correctAnswer: 0
  }],
  {
    paragraph: "Five roommates Ralph, Sam, T.J, Yvonne, and Val each do one housekeeping task mopping, sweeping, laundry, vacuuming, or dusting one day a week, Monday through Friday. * Val does not vacuum and does not do her task on Tuesday. * Sam does the dusting, and does not do it on Monday or Friday. * The mopping is done on Thursday. * T.J does his task, which is not vacuuming, on Wednesday. * The laundry is done on Friday, and not by Yvonne. * Ralph does his task on Monday. Answer the following questions based on the passage above"
    questions:[
  {
    question: "What task does T.J do on Wednesday",
    choices: ["vaccuming", "dusting", "mopping", "sweeping", "laundry", "I don't know"],
    correctAnswer: 3
  },
  {
    question: "What task does Val do?",
    choices: ["vaccuming", "dusting", "mopping", "sweeping", "laundry", "I don't know"],
    correctAnswer: 4
  },
  {
    question: "What day does Yvonne do his task",
    choices: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "I don't know"],
    correctAnswer: 4
  },
  {
    question: "What day is the vaccuming done",
    choices: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "I don't know"],
    correctAnswer: 0
  }],
  {
    paragraph: "In each of the following questions, three statements are given followed by four conclusions numbered I, II, III and IV. You have to take the given statements to be true even if they seem to be at variance with commonly known facts and then decide which of the given conclusions logically follows from the given statements disregarding commonly known facts. Answer the following questions"
    questions: [
      {
        question: "Statements: All benches are desks. Some desks are roads. All roadsd are pillars. Conclusions: I. Some pillars are benches. II.Some pillars are desks. III.Some roads are benches. IV. No pillar is bench. None follows",
        choices: ["Only either I or IV, and III follow", "Only either I or IV follows", "Only either I or IV, and II follow", "All follow", "I don't know"],
        correctAnswer: 2
      },
      {
        question: "Statements: Some trains are roads. No road is jungle. All flowers are jungles. Conclusions: I.Some trains are flowers. II.Some trains are jungles. III.Some flowers are trains. IV.No road is flower. ",
        choices: ["None follows", "Only II follows", "III follows", "Only IV follows", "All follow", "I don't know"],
        correctAnswer: 3
      },
      {
        question: "Statements: All oceans are rivers. Some springs are rivers. All wells are springs. Conclusions: I.Some springs are oceans. II.Some wells are rivers. III.Some rivers are oceans. IV.No well is river.",
        choices: ["None follows", "Only either I or III, and IV follow", "All follow", "Only either II or IV, and I follow", "I don't know"],
        correctAnswer: 2
      }
    ],
  {
    paragraph: "Jenny took a taxi to meet her three friends for lunch. They were waiting for her outside the restaurant when she pulled up in the car. She was so excited to see her friends that she left her tote bag in the taxi. As the taxi pulled away, she and her friends took notice of the license plate number so they would be able to identify the car when they called the taxi company. #1: The four women seem to agree that the plate starts out with the letter J. #2: Three of them agree that the plate ends with 12L. #3: Three of them think that the second letter is X, and a different three think that the third letter is K.",
    questions: [
  {
    question: "Which one is most likely the license plate number of the taxi?",
    choices: ["JXK 12L", "JYK 12L", "JXK 12I", "JXX", "I don't know"],
    correctAnswer: 0
  }]
];
