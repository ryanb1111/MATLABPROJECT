% This file refines on the structure and polishes on grammar, readability
% and so on from previous files so far. 'Updated': ...Comment suggests the
% comment has been changed or added.
function guessHistory = getUserGuessV4(gridSize, target)

% Initalise variables
maxGuesses = 5; 
guessHistory = [];
% For computing feedback
prevDistance = -1; 

% Print the message where the guessing game begins 
fprintf('\nLet the guessing begin!');
fprintf('\nYou will have %d attempts to guess the location of the coordinate correctly or the location will be revealed and the game will end.\n\n', maxGuesses);

% Loop to prompt the user to make guesses in the format (row, coloumn)
for attempt = 1:maxGuesses
    while true
        guess = input(sprintf('Attempt %d/%d [row, column]: ', attempt, maxGuesses), 's');
        guess = str2num(guess);
        % NEW: Added mod(guess, 1) == 0 to ensure only integer values can
        % be accepted.
        if isnumeric(guess) && numel(guess) == 2 && all(guess >= 1) && all(guess <= gridSize) && all(mod(guess, 1) == 0)
            break;
        end
        fprintf('Invalid! Enter two numbers between 1 and %d\n\n', gridSize);
    end

% Append the current guess to guess history
guessHistory = [guessHistory; guess];


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
prevDistance = currDistance;

% Check if the guess matches the location. (isequal was a in-built function
% found on MathWorks website. Link to website:
% https://au.mathworks.com/help/matlab/ref/double.isequal.html)
if isequal(guess, target)
    fprintf('\nGood job! You guessed the correct coordinate (%d, %d)!\n', target(1), target(2));
    return;
else
    % Inform the user that they guessed the incorrect coordinates
    fprintf('Good Guess but not quite right.\n\n');
end

% Offer first attempt after 3 attempts
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
        fprintf('No hint given. Continue Guessing!\n\n');
    end
end
    % Offer second hint after 4 failed attempts
    if attempt == 4
    hint = input('Would you like another hint (Y/N): ', 's');
    if strcmpi(hint, 'Y')
        fprintf('Hint: The target is in row %d.\n\n', target(1));
    elseif strcmpi(hint, 'N')
        fprintf('No hint given. You have one more guess to find the location of the coordinates or the location will be revealed and the game will finish.\n\n');
    else 
        fprintf('Come on, you got this! Continue Guessing.')
    end
end
end

% If all attempts are used, reveal the target location
fprintf('Unlucky, you were unable to guess the correct location.\n')
fprintf('The target coordinate was: (%d, %d)\n\n', target(1), target(2));



