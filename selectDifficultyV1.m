% New changes from from previous file(selectDifficultyV0): Added input validation
% loop so user must enter 1, 2 or 3. Provides confirmation to user when a valid
% difficulty is selected

% This file enables the user to select a difficulty level for the guessing
% game and provides a grid accordingly. 
function gridSize = selectDifficultyV1()

% Introduce the game to the user
fprintf('Hey there!, Welcome to the Grid Guessing Game.\n');
fprintf('Your goal is to guess the hidden location(s) of a coordinate on the chosen grid.\n\n');

% Display the difficulty level
fprintf('From the options below, please choose a difficulty level.\n')
fprintf('1. Easy (5x5) - Recommended for beginners\n');
fprintf('2. Medium (10x10)\n');
fprintf('3. Hard (20x20)\n');

% NEW: Initalise input variable
validInput = false;

% NEW: Continue asking until user enters a valid input
while ~validInput
    choice = input('Enter 1 for Easy, 2 for Medium, or 3 for Hard: ');
    if choice == 1
        gridSize = 5;
        validInput = true;
        fprintf('You have selected Easy mode (5x5).\n')
    elseif choice == 2
        gridSize = 10; 
        validInput = true;
        fprintf('You have selected Medium mode (10x10).\n');
    elseif choice == 3
        gridSize = 20;
        fprintf('You have selected Hard mode (20x20), Good Luck.\n')
        validInput = true;
    else
        fprintf('Invalid Input, Please enter either 1, 2 or 3.\n')
    end
end
