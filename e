<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Do You Hate Me?</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div id="container">
    <h1 class="question">Do u hate me? <span class="sad-face">😢</span></h1>
    <div class="buttons">
      <button id="yes-btn">Yes</button>
      <button id="no-btn">No</button>
    </div>
  </div>

  <div id="yes-screen" class="hidden">
    <h1>Ok, I leave u alone...</h1>
    <img src="https://placekitten.com/300/300" alt="Sad kitten" class="crying-kitten">
  </div>

  <div id="no-screen" class="hidden">
    <h1>Me neither, sweetie! ❤️</h1>
    <p class="hearts">💕💖💗💓💞</p>
  </div>

  <script src="script.js"></script>
</body>
</html>
/* General Styles */
body {
  margin: 0;
  font-family: 'Arial', sans-serif;
  background-color: #fff8f5;
  color: #333;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  overflow: hidden;
}

/* Container */
#container, #yes-screen, #no-screen {
  text-align: center;
}

.hidden {
  display: none;
}

/* Question Styles */
.question {
  font-size: 2.5rem;
  margin-bottom: 20px;
}

.sad-face {
  font-size: 3rem;
}

/* Buttons */
.buttons {
  margin-top: 20px;
}

button {
  padding: 10px 20px;
  margin: 0 10px;
  border: none;
  border-radius: 5px;
  font-size: 1.2rem;
  cursor: pointer;
  transition: all 0.3s;
}

button:hover {
  transform: scale(1.1);
}

#yes-btn {
  background-color: #f76d6d;
  color: white;
}

#no-btn {
  background-color: #6df7a7;
  color: white;
}

/* Yes Screen */
#yes-screen {
  background-color: #000;
  color: white;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}

.crying-kitten {
  margin-top: 20px;
  width: 200px;
  border-radius: 10px;
}

/* No Screen */
#no-screen {
  background-color: #ffeef8;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}

.hearts {
  font-size: 2rem;
  margin-top: 10px;
}
// Buttons
const yesBtn = document.getElementById('yes-btn');
const noBtn = document.getElementById('no-btn');

// Screens
const container = document.getElementById('container');
const yesScreen = document.getElementById('yes-screen');
const noScreen = document.getElementById('no-screen');

// Event Listeners
yesBtn.addEventListener('click', () => {
  container.classList.add('hidden');
  yesScreen.classList.remove('hidden');
});

noBtn.addEventListener('click', () => {
  container.classList.add('hidden');
  noScreen.classList.remove('hidden');
});
