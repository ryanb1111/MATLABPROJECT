% New changes from previous file (selectDifficultyV2): Use of switch statements
% rather than if/if-else statements to make the function more readable, cleaner and
% avoids repetition of == for instance. 

% This file enables the user to select a difficulty level for the guessing
% game and provides a grid accordingly.
function gridSize = selectDifficultyV3()

% Introduce the game to the user
fprintf('\nHey there!, Welcome to the Grid Guessing Game.\n');
fprintf('Your goal is to guess the hidden location(s) of a coordinate on the chosen grid.\n\n');
fprintf('From the options below, please choose a difficulty level.\n')


% Display the difficulty level
fprintf('1. Easy (5x5) - Recommended for beginners\n');
fprintf('2. Medium (10x10)\n');
fprintf('3. Hard (20x20)\n');

% Initalise attempt logic
attempts = 0;
maxAttempts = 3;

% NEW: The original logic for this code differs from previous file as
% switch cases are utilised.
while attempts < maxAttempts
    choice = input('Please either Enter 1 (Easy), 2 (Medium) or 3 (Hard): ');
    fprintf('\n');
    
    % Check input choice and set grid size
    switch choice
        case 1 
            gridSize = 5;
            fprintf('Easy mode selected! Get ready for the 5x5 grid.\n\n');
            return;
        case 2
            gridSize = 10;
            fprintf('Medium mode selected! A solid test awaits you in the 10x10 grid.\n\n');      
            return;
        case 3
            gridSize = 20;
            fprintf('Hard Mode selected!! Good Luck, warrior for the 20x20 grid.\n\n')
            return;
        otherwise
            % RemainingAttempts is calculated through subtracting the
            % maxAttempts by attempts
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



            