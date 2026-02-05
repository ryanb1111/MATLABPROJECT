% Stage 1 of code: This file enables the user to select a difficulty level for the guessing
% game and provides a grid accordingly. This version only returns the size
% of the grid rather than creating it.
function gridSize = selectDifficultyV0()

% Introduce the game to the user
fprintf('Hey there!, Welcome to the Grid Guessing Game.\n');
fprintf('Your goal is to guess the hidden location(s) of a coordinate on the chosen grid.\n\n');

% Display the difficulty level
fprintf('From the options below, please choose a difficulty level.\n')
fprintf('1. Easy (5x5) - Recommended for beginners\n');
fprintf('2. Medium (10x10)\n');
fprintf('3. Hard (20x20)\n');

% Asks the user which difficulty they would prefer
choice = input('Enter 1 for Easy, 2 for Medium, or 3 for Hard: ');

% Creating an if statement to set grid size based on user's choice
if choice == 1
    gridSize = 5;
elseif choice == 2
    gridSize = 10;
elseif choice == 3
    gridSize = 20;
else
    fprintf('Invalid Input.\n');
    gridSize = NaN;
end
end


