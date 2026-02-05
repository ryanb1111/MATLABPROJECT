% New changes from previous file (selectDifficultyV1): The user has 3 attempts 
% to provide a valid input by entering either 1, 2 or 3. With each invalid input,
% the number of remaining attempts decreases until it 0 in which the game ends. The
% remaining attempts are shown to the user.


% This file enables the user to select a difficulty level for the guessing
% game and provides a grid accordingly.
function gridSize = selectDifficultyV2()

% Introduce the game to the user
fprintf('Hey there!, Welcome to the Grid Guessing Game.\n');
fprintf('Your goal is to guess the hidden location(s) of a coordinate on the chosen grid.\n\n');

% Display the difficulty level
fprintf('From the options below, please choose a difficulty level.\n')
fprintf('1. Easy (5x5) - Recommended for beginners\n');
fprintf('2. Medium (10x10)\n');
fprintf('3. Hard (20x20)\n');

% NEW: Initalise input variable and define the maximum number of attempts (maxAttempts) 
validInput = false;
attempts = 0;
maxAttempts = 3;

% NEW: Loop until valid input is entered or attempts are exhausted
while ~validInput && attempts < maxAttempts
    % Prompt for input
    choice = input('Enter 1 for Easy, 2 for Medium, or 3 for Hard: ');
    fprintf('\n');

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
        validInput = true;
        fprintf('You have selected Hard mode (20x20), Good Luck.\n')
    else
        % NEW: remainingAttempts is calculated through subtracting the
        % maxAttempts by attempts
        attempts = attempts + 1;
        remainingAttempts = maxAttempts - attempts;

    % NEW: Show feedback to user regarding their remaining attempts
    if remainingAttempts > 0
        fprintf('Invalid Input, Please enter either 1, 2 or 3.\n')
        fprintf('You have %d more attempt(s).\n', remainingAttempts);
    else
        fprintf('You have reached the maximum number of attempts.\n')
    end
    end
end








 
            