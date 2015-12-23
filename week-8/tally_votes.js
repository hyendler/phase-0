// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Hanah Yender/KB DiAngelo
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}



/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/




// Pseudocode
// For Assert 1 - 4, access the object voteCount and then access the property of that object, and then insert an object inside that includes the property Bob with the value 3.
// For Asserts 5-8, create a function that "elects" students based on the number of votes recieved. Access the voteCount's particular student government position property, and return the student name with the highest number.
// In order to tally up the votes iterate over votes.  Access each property inside of votes, and if the property inside of that matches with the property inside of votecount (so president and president), if the person didn't exist yet inside, add the person and 1 vote.  The second case is that the person already exists, in which case ++ their vote count.  

// __________________________________________
// Initial Solution

// Tally the votes in voteCount.




/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}




//   for (var student in votes) { //Alex
//     var studentsVote = votes[student]; //studentsVote is the object following Alex, containing {president:Bob, vicePresident: Devin, etc;}
//     for (var officer in studentsVote) { //officer is president, vicepresident, etc
//       var name = studentsVote[officer]; //name is the value of the officer key, so aka Bob, Devin, etc
//       for (position in voteCount) {
//         var positionVoteNames = voteCount[position];
//         if (positionVoteNames.hasOwnProperty(name)){
//           positionVoteNames[name] += 1 ;
//         } else {
//           positionVoteNames[name] = 1;
//         }
//       }
//     }
//   }
// return voteCount;
// }


var tallyVotes = function(votes, voteCount){
  for (var position in voteCount) { //position is president: {}
    var positionVoteNames = voteCount[position]; // positionVoteNames is {}
    for (var student in votes) { //student is "Alex": { president: "Bob", ... }
      var studentsVote = votes[student]; //studentsVote is { president: "Bob", ... }
        var name = studentsVote[position]; //name is Bob, etc
        if (positionVoteNames.hasOwnProperty(name)) {
          positionVoteNames[name] += 1;
        } else {
          positionVoteNames[name] = 1;
        }
    }
  }
  return voteCount;
}

var talliedVotes = tallyVotes(votes, voteCount);

var determineWinner = function(officers, talliedVotes) {
  var frontrunner = "";
  for (position in talliedVotes) {
     var maxVotes = 0;
    var  positionVoteNames = talliedVotes[position];
    for (name in positionVoteNames) {
      if (positionVoteNames[name] > maxVotes) {
        maxVotes = positionVoteNames[name];
        frontrunner = name;
      }
       // console.log(maxVotes + " " + name)
    }
    officers[position] = frontrunner;
  }
  return officers;
}

console.log(determineWinner(officers, talliedVotes));


// __________________________________________
// Refactored Solution






// __________________________________________
// Reflection
// Took me a long time to solve, due to the looping within looping concept, and making sure everything was working the way it should be.





// __________________________________________
// Test Code:  Do not alter code below this line.

/*

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)

*/