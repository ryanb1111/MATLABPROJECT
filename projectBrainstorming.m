Project Brainstorming

Chosen Idea: A game where the user tries to guess a 2D location in a grid based on feedback from the the computer in terms of information like “you’re getting closer” or “you’re getting further away”.


Breaking down the project into steps.

Aim for 400 lines of functional code according to the rubric.

Stage 1: Introduce the game, implement in difficulty levels and create a grid based off their difficulty choice
Goal: Introduce the Add difficulty levels that change the grid size such as Easy mode is 5x5, Medium is 10x10 and Hard is 20x20
Possible MATLAB file name: selectDifficulty.m
Possible text file names: testXselectDifficulty.m

Notes: Include "Difficulty level recommended for beginners is Easy mode" or something along the lines of that, display messages to motivate the user if choosing the harder levels such as Medium or Hard. Create an empty grid to show the user and cover it with X marks once the user guesses (for later steps). The grid will have numbers on top which correspond with each box. Game ends after user 

Stage 2: Generate a random target coordinate
Goal: The program will randomly select a coordinate (x, y) on a grid of set size such as 5x5 matrix.
Possible MATLAB file name: generateTarget.m
Possible test file names: testXGenerateTarget.m (where X is what test file number it is)

Notes: A random coordinate will be created by the computer and the use won't know what it is yet. The coordinate will be within the parameters of the chosen grid or guessing its location would be impossible.

Combining Stages 3, 4 and 5 into one file due to them being tightly linked and natural progression within the file. 

Stage 3: Get a guess from the user
Goal: Read a coordinate guess (xGuess, yGuess) from the user based off the grid they chose.
Possible MATLAB file name: getUserGuess.m
Possible test file names: testXGetUserGuess.m

Notes: The user will now guess where the location is of the generated coordinate based off their chosen grid. Additionally, the user will have 5 attempts to guess the correct location or the program will end and reveal the location. In the third and 4th attempt, the user will get provided hints to help them to correctly guess the location. While the user guesses, there will be a small note that tells them how many attempts are remaining. Moreover, if the user doesn't make a valid guess, a message will pop up telling them that its invalid and they should try again. Finally, the guess history of the user will show at the end of the game and the user will be able to see what attempt they're currently on (attempts don't count if invalid input is entered).


Stage 4: Compute distance and feedback
Goal: Compute distance from current guess to target and provide feedback. For instance, First Guess: "You're X units away" and later guesses could include "You're getting closer" or "Getting further".

Notes: While the user guesses the location of the coordinate, another message will pop-up telling them how far they are and provide feedback every attempt (from attempt 2 onwards) informing them whether they're getting closer or further away. Additionally, at the end of this game, the user will be able to see their guess history.


Stage 5: Game Loop and Grid adjustments
Goal: Loop the user guesses until the correct coordinate is found and highlight the box which has been guessed
Notes: After each attempt, the coordinate which the user guessed will be highlighted in the grid.



