% Test and driver file for getUserGuessV3 function (similarly formatted to 
% previous test files versions)

% Normal Case 1 to ensure it works as required: Correct guess within first 3 attempts
fprintf('\nNormal Case: Correct guess\n');
fprintf('Expected: Displays "Good job!" and ends game early if target is guessed correctly.\n\n');
target = [3, 4];
gridSize = 5;
guessHistory = getUserGuessV3(gridSize, target);
disp(guessHistory);


% Edge Case 1: Non-numeric input
fprintf('\nEdge case 1: Non-numeric input\n');
fprintf('Expected: Prompts user again after invalid input like "a, b".\n\n');
target = [3, 4];
gridSize = 5;
guessHistory = getUserGuessV3(gridSize, target);
disp(guessHistory);

% Edge Case 2: Input out of grid boundaries
fprintf('\nEdge Case 2: Out of bounds input\n');
fprintf('Expected: Prompts user again after input like "6, 6" on a 5x5 grid.\n\n');
target = [3, 4];
gridSize = 5;
guessHistory = getUserGuessV3(gridSize, target);
disp(guessHistory);

% Edge Case 3: All attempts used, target not guessed
fprintf('\nEdge Case 3: All guesses used\n');
fprintf('Expected: Displays "Unlucky!" and reveals target after 5 incorrect guesses.\n\n');
target = [3, 4];
gridSize = 5;
guessHistory = getUserGuessV3(gridSize, target);
disp(guessHistory);


