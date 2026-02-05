% This is the final project file in which all the functions utilised from
% all stages have been combined into.

% Stage 1 of the program
function gridSize = selectDifficultyV3()

% Introduce the game to the user
fprintf('\nHey there!, Welcome to the Grid Guessing Game.');
fprintf('Your goal is to guess the hidden location(s) of a coordinate on the chosen grid.\n\n');
fprintf('From the options below, please choose a difficulty level.\n');

% Display the difficulty level
fprintf('1. Easy (5x5) - Recommended for beginners\n');
fprintf('2. Medium (10x10)\n');
fprintf('3. Hard (20x20)\n');

% Initalise attempt logic
attempts = 0;
maxAttempts = 3;

% Ask user to either enter 1, 2 or 3
while attempts < maxAttempts
    choice = input('Please either Enter 1 (Easy), 2 (Medium) or 3 (Hard): ');
    fprintf('\n');
    % Check input choice and set grid size
    switch choice
        case 1 
            gridSize = 5;
            fprintf('Easy mode selected! Get ready for the 5x5 grid.\n');
            fprintf('\n');
            return;
        case 2
            gridSize = 10;
            fprintf('Medium mode selected! A solid test awaits you in the 10x10 grid.\n');   
            fprintf('\n');
            return;
        case 3
            gridSize = 20;
            fprintf('Hard Mode selected!! Good Luck, warrior for the 20x20 grid.\n\n')
            fprintf('\n');
            return;
        otherwise
            % User must type a valid input or after three tries, the game
            % will end 
            attempts = attempts + 1;
            remainingAttempts = maxAttempts - attempts;
            if remainingAttempts > 0
                fprintf('Invalid Input. Please either Enter 1, 2 or 3. (%d attempt(s) left)\n\n', remainingAttempts);
            else
                fprintf('Unfortunately you have used all your attempts. Game will now exit.\n\n');
            end
    end
end
end

% Stage 2 of the project which is generating a random target coordinate (x,
% y) within the grid chosen.
function target = generateTargetFinal(gridSize)

% Generate random x and y coordinates based off the grid size chosen by the
% user
x = randi([1, gridSize]);
y = randi([1, gridSize]);

% Return the target coordinates
target = [x, y];

% Inform the user that a target has been chosen but won't be revealed yet
fprintf('\nA target coordinate has been generated. Good luck in trying to guess where it is.'); 
fprintf('\n');
end

% Stages 3 to 5 of the program. See projectBrainstorming.txt for more
% information
function guessHistory = getUserGuessV5Main(gridSize, target)

% Initialise variables
maxGuesses = 5;
guessHistory = [];
prevDistance = -1; 

% Matrix to track guessed coordinates (0 = unguessed, 1 = guessed (X), 2 = target (T))
guessedCells = zeros(gridSize);
fprintf('\nLet the guessing begin!');
fprintf('\nYou will have %d attempts to guess the location of the coordinate correctly or the location will be revealed and the game will end.\n', maxGuesses);
fprintf('\n');

% Display initial grid
displayGuessingGrid(gridSize, guessedCells);  

% Loop to prompt the user to make guesses
for attempt = 1:maxGuesses
    while true
        guess = input(sprintf('Attempt %d/%d [row, column]: ', attempt, maxGuesses), 's');
        guess = str2num(guess);
        % Ensure only valid integer inputs. Source: https://au.mathworks.com/help/matlab/ref/double.isequal.html)
        if isnumeric(guess) && numel(guess) == 2 && all(guess >= 1) && all(guess <= gridSize) && all(mod(guess, 1) == 0)
            break;
        end
        fprintf('Invalid! Enter two numbers between 1 and %d\n', gridSize);
        fprintf('Please type a valid input')
    end

    % Append the current guess to history
    guessHistory = [guessHistory; guess];
    guessedCells(guess(1), guess(2)) = 1;  % Mark as guessed (X)

    % Show updated grid (with X)
    displayGuessingGrid(gridSize, guessedCells);  

    % Compute feedback
    currDistance = sum(abs(guess - target));
    if prevDistance ~= -1
        if currDistance < prevDistance
            fprintf("You're getting closer!.\n");
        elseif currDistance > prevDistance
            fprintf("You're getting further away!.\n")
        else
            fprintf("You're the same distance as last time, consider guessing a different location.\n");
        end
    end
    fprintf('Distance: %d\n', currDistance);
        if attempt == 2
        fprintf('Also, Distance is sum of the row and column difference from the target.\n');
        fprintf('For example, (3, 4) to (1, 1) has a distance of 5.\n');
        fprintf('\n');
        end
    prevDistance = currDistance;

    % Check if guess matches target
    if isequal(guess, target)
        guessedCells(target(1), target(2)) = 2;  % Mark target (T) immediately
        fprintf('Good job! You guessed the correct coordinate (%d, %d)!\n', target(1), target(2));
        displayGuessingGrid(gridSize, guessedCells);  % Show final grid with T
        return;
    else
        fprintf('Good Guess but not quite right.\n\n');
    end

    % Offer hint after 3 attempts
    if attempt == 3
        hint = input('Would you like a hint? (Y/N): ', 's');
        if strcmpi(hint, 'Y')
            if guess(2) < target(2)
                fprintf('Hint: Try guessing to the right.\n\n');
            elseif guess(2) > target(2)
                fprintf('Hint: Try guessing to the left.\n\n')
            else
                fprintf('Hint: Your guess is in the correct column!\n\n');
            end
        elseif strcmpi(hint, 'N')
            fprintf('No hint given. Continue Guessing!\n\n');
        end
    end
    
    % Offer last hint after 4 attempts
    if attempt == 4
        hint = input('Would you like another hint (Y/N): ', 's');
        if strcmpi(hint, 'Y')
            fprintf('Hint: The target is in row %d.\n\n', target(1));
        elseif strcmpi(hint, 'N')
            fprintf('No hint given. You have one more guess to find the location of the coordinates or the location will be revealed and the game will finish.\n\n');
        else 
            fprintf('Come on, you got this! Continue Guessing.\n\n')
        end
    end
end

% If all attempts are used, reveal the target
fprintf('Unlucky, you were unable to guess the correct location.\n')
fprintf('The target coordinate was: (%d, %d)\n\n', target(1), target(2));
% Mark target (T)
guessedCells(target(1), target(2)) = 2;  
% Show final grid with X's and T
displayGuessingGrid(gridSize, guessedCells);  
end

% Helper function to display the grid and highlight the grid accordingly
% based off user guess.
function displayGuessingGrid(gridSize, guessedCells)
fprintf('\nCurrent Grid:\n');
fprintf('   ');
for col = 1:gridSize
    fprintf('%3d ', col);
end
fprintf('\n');
for row = 1:gridSize
    fprintf('%2d: ', row);
    for col = 1:gridSize
        if guessedCells(row, col) == 1       
            fprintf('[X] ');
        elseif guessedCells(row, col) == 2   
            fprintf('[T] ');
        else
            fprintf('[ ] ');
        end
    end
    fprintf('\n');
end
fprintf('\n');
end