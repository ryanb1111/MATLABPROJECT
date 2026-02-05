% New changes: This file extends from getUserGuessV2 and informs the user they're
% distance from the targeted location after each guess and computes
% feedback such as if they're getting closer or further away after each
% attempt, focusing on Stage 4 of the program.
function guessHistory = getUserGuessV3(gridSize, target)

% Initialise variables
maxGuesses = 5;
guessHistory = [];
% NEW: prevDistance is initalised as -1 to flag that no previous distance has 
% been calculated yet. Variable required for computing feedback
prevDistance = -1; 

% Print the message where the guessing game begins
fprintf('\nLet the guessing begin! You will have %d attempts to guess the location of the coordinate correctly or the location will be revealed and the game will end.\n', maxGuesses);

% Loop to prompt the user to make guesses in the format (row, column)
for attempt = 1:maxGuesses   
    % Keep asking until valid input
    while true
        % NEW: Changed prompt style and string input with conversion
        guess = input(sprintf('Attempt %d/%d [row, column]: ', attempt, maxGuesses), 's');
        guess = str2num(guess);
        % Validate input and checks that it's numeric, has 2 values, and is
        % within grid boundaries. Source:
        % https://au.mathworks.com/help/matlab/ref/double.isequal.html)
        if isnumeric(guess) && numel(guess) == 2 && all(guess >= 1 & guess <= gridSize)
            break;
        else
            % Provide feedback if input is invalid
            fprintf('Invalid input. Please enter two numbers between 1 and %d (e.g., 2, 3)\n', gridSize);
        end
    end

    % Append the current guess to guess history
    guessHistory = [guessHistory; guess];

    % NEW: Compute distance feedback after each guess
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
    % NEW: update prevDistance for next guess
    prevDistance = currDistance;

    % Check if the guess matches the target
    if isequal(guess, target)
        fprintf('Good job! You guessed the correct coordinate (%d, %d)!\n', target(1), target(2));
        return;
    else
        fprintf('Good Guess but not quite right.\n');
    end

    % Offer first hint after 3rd guess
    if attempt == 3
        hint = input('Would you like a hint? (Y/N): ', 's');
        if strcmpi(hint, 'Y')
            if guess(2) < target(2)
                fprintf('Hint: Try guessing to the right.\n\n');
            elseif guess(2) > target(2)
                fprintf('Hint: Try guessing to the left.\n\n')
            else
                fprintf('Hint: Your guess is in the correct coloumn!\n\n');
            end
        elseif strcmpi(hint, 'N')
            % NEW: Clarified response for "no hint"
            fprintf('No hint given. Continue Guessing!\n\n');
        end
    end
    % Offer final hint after 4th guess
    if attempt == 4
        hint = input('Would you like another hint? (Y/N): ', 's');
        if strcmpi(hint, 'Y')
            fprintf('Hint: The target is in row %d.\n\n', target(1));
        end
    end
end

% Reveal target location if not guessed
fprintf('Unlucky! The target coordinate was: (%d, %d)\n\n', target(1), target(2));
end




