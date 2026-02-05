% New changes: After each attempt the user has on guessing the location of
% the coordinates, the grid is highlighted with an X or T. For instance, if they
% user guesses [1, 5] and it's incorrect, that specific box will have an X in it. At
% the end of the game, if the user does or doesn't guess the box, the
% correct box will be marked through a T. Also, it follows more logic. This covers stage 5 of the program.
function guessHistory = getUserGuessV5Main(gridSize, target)

% Initialise variables
maxGuesses = 5;
guessHistory = [];
prevDistance = -1; 

% Matrix to track guessed coordinates (0 = unguessed, 1 = guessed (X), 2 = target (T))
guessedCells = zeros(gridSize);

fprintf('\nLet the guessing begin!');
fprintf('\nYou will have %d attempts to guess the location of the coordinate correctly or the location will be revealed and the game will end.\n\n', maxGuesses);

% Display initial grid
displayGuessingGrid(gridSize, guessedCells);  

% Loop to prompt the user to make guesses
for attempt = 1:maxGuesses
    while true
        guess = input(sprintf('Attempt %d/%d [row, column]: ', attempt, maxGuesses), 's');
        guess = str2num(guess);
        % Ensure only valid integer inputs
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

    % Hint after 3 attempts
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
    
    % Hint after 4 attempts
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
guessedCells(target(1), target(2)) = 2;  % Mark target (T)
displayGuessingGrid(gridSize, guessedCells);  % Show final grid with X's and T
end

% Helper function to display the grid (unchanged)
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