% Stage 3: This function allows the user to guess the coordinates of a randomly
% generated target and has 5 guesses to correctly guess the correct
% coordinate or they lose. After each guess, the guess is recorded in the
% history

function guessHistory = getUserGuessV1(target)

% Initalise variables
maxGuesses = 5;
guessHistory = [];

% Print the message where the guessing game begins 
fprintf('\nLet the guessing begin! You will have %d attempts to guess the location of the coordinate correctly or the location will be revealed and the game will end.\n', maxGuesses);

% Loop to prompt the user to make guesses in the format (row, coloumn)
for attempt = 1:maxGuesses
    prompt = sprintf('\nEnter Guess %d [row, coloumn]: ', attempt);
    guess = input(prompt);

    % Append the current guess to guess history
    guessHistory = [guessHistory; guess];

    % Check if the guess matches the location. (isequal was a in-built function
    % found on MathWorks website. Link to website: 
    % https://au.mathworks.com/help/matlab/ref/double.isequal.html)
    if isequal(guess, target)
        fprintf('\nGood job! You guessed the correct coordinate (%d, %d)!\n', target(1), target(2));
        return;
    else
    % Inform the user that they guessed the incorrect coordinates
    fprintf('Good Guess but not quite right.\n');
    end
end
% If game ends without user getting correct guess
fprintf('Game ended\n');
end



