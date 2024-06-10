// Get a random number between 1 and 100
const randomNumber = Math.floor(Math.random() * 100) + 1;

// User Guess function
function userGuess() {
  // store user input 
  const userGuess = parseInt(document.getElementById(' ').value);

  // Create a message 
  const message = document.getElementById('message');
 // const message2 = document.getElementById('message2');

 //document.getElementById("demo").innerHTML = randomNumber;

  // Compare user guess with computer one
  if (userGuess === randomNumber) {
    message.style.color = 'black';
    message.textContent = 'Guess is correct!';
  } else if (userGuess < randomNumber) {
    message.style.color = 'yellow';
    message.textContent = 'You answered ' + userGuess + ' .The correct answer is higher!';
  } else {
    message.style.color = 'red';
    message.textContent = 'You answered ' + userGuess + ' .The correct answer is lower!';

   // message2.style.color = 'yellow';
   // message2.textContent = 'Too low. Try again.';
  }
}