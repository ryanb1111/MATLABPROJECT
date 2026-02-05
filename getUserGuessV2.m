% NEW: This version of the file is able to handle 1, 2 rather than [1, 2], shows
% guess history at the end and makes a hint system. 

% NEW: Updated function to include gridSize
function guessHistory = getUserGuessV2(gridSize, target)

% Initialise variables
maxGuesses = 5;
guessHistory = [];

% Print the message where the guessing game begins 
fprintf('\nLet the guessing begin! You will have %d attempts to guess the location correctly.\n', maxGuesses);

% NEW: Use of while loop for input validation
for attempt = 1:maxGuesses
    % Keep asking until valid input
    while true
        prompt = sprintf('Enter Guess %d (row, column): ', attempt);
       
        % NEW: Read user input as string instead of numeric
        userInput = input(prompt, 's');  
        
        % Convert string to numeric array
        guess = str2num(userInput);   

        % NEW: Allows the user to type an input like 1, 2 rather than [1, 2].
        % Also, validates input and confirms it's numeric and has exactly 2 values which are
        % present within the grid boundaries.Source. Link to website:
        % https://au.mathworks.com/help/matlab/ref/double.isequal.html)
        if isnumeric(guess) && numel(guess) == 2 && all(guess >= 1 & guess <= gridSize)
            % NEW: Exit the loop if input is valid rather than returning
            % value
            break;
        else
            % Provide feedback if input is invalid
            fprintf('Invalid input. Please enter two numbers between 1 and %d (e.g., 2, 3)\n', gridSize);
        end
    end

    % Append the guess to guess history
    guessHistory = [guessHistory; guess];

    % Check for correct guess
    if isequal(guess, target)
        fprintf('\nGood job! You guessed the correct coordinate (%d, %d)!\n', target(1), target(2));
        return;
    else
        fprintf('Incorrect guess.\n');
    end

    % NEW: Addition of hint system to offer after 3rd guess.
    % Provide a hint after 3 incorrect guesses
    if attempt == 3
        hint = input('Would you like a hint? (Y/N): ', 's');
        if strcmpi(hint, 'Y')
            % Provide a hint based on the comparison of column numbers
            if guess(2) < target(2)
                fprintf('Hint: Try guessing to the right.\n\n');
            elseif guess(2) > target(2)
                fprintf('Hint: Try guessing to the left.\n\n');
            else
                fprintf('Hint: Your guess is in the correct column!\n\n');
            end
        end
    end

    % NEW: Provide final hint after 4th guess to help the user once more
    if attempt == 4
        hint = input('Would you like another hint? (Y/N): ', 's');
        if strcmpi(hint, 'Y')
            fprintf('\nHint: The target is in row %d.\n\n', target(1));
        end
    end
end

% NEW: Reveal target location if not guessed
fprintf('Unlucky! The target coordinate was: (%d, %d)\n\n', target(1), target(2));


