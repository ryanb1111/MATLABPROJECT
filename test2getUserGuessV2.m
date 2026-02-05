% Test and driver file for getUserGuessV2 function (similarly formatted to
% test files in previous stages).

% Test Case 1: Valid guess input (both within grid size and formatted correctly)
fprintf('\nTEST 1\n');
fprintf('Expected: The function should accept valid inputs like "1, 2" and continue without error.\n\n');
target = [3, 4];
gridSize = 5;
guessHistory = getUserGuessV2(gridSize, target);
fprintf('guessHistory: ');
disp(guessHistory);

% Test Case 2: Invalid input (non-numeric input)
fprintf('\nTEST 2\n');
fprintf('Expected: The function should ask for re-input upon invalid input like "a, b".\n\n');
target = [3, 4];
gridSize = 5;
guessHistory = getUserGuessV2(gridSize, target);
fprintf('guessHistory: ');
disp(guessHistory);

% Test Case 3: Invalid input (out of grid boundaries)
fprintf('\nTEST 3\n');
fprintf('Expected: The function should ask for re-input when the guess is outside the grid boundaries (e.g., 6, 6 for a 5x5 grid).\n\n');
target = [3, 4];
gridSize = 5;
guessHistory = getUserGuessV2(gridSize, target);
fprintf('guessHistory: ');
disp(guessHistory);

% Test Case 4: No guess after 3 attempts and hint provided
fprintf('\nTEST 4\n');
fprintf('Expected: The function should offer a hint after the 3rd incorrect guess if the user inputs "Y".\n\n');
target = [3, 4];
gridSize = 5;
guessHistory = getUserGuessV2(gridSize, target);
fprintf('guessHistory: ');
disp(guessHistory);

% Test Case 5: No guess after 4 attempts and another hint provided
fprintf('\nTEST 5\n');
fprintf('Expected: The function should offer another hint after the 4th incorrect guess if the user inputs "Y".\n\n');
target = [3, 4];
gridSize = 5;
guessHistory = getUserGuessV2(gridSize, target);
fprintf('guessHistory: ');
disp(guessHistory);

% Test Case 6: Correct guess made in the first attempt
fprintf('\nTEST 6\n');
fprintf('Expected: The function should print "Good job!" and exit the loop if the correct guess is made.\n\n');
target = [3, 4];
gridSize = 5;
guessHistory = getUserGuessV2(gridSize, target);
fprintf('guessHistory: ');
disp(guessHistory);

% Test Case 7: All guesses exhausted, and the target is revealed
fprintf('\nTEST 7\n');
fprintf('Expected: The function should print "Unlucky!" and reveal the target coordinate if all guesses are exhausted.\n\n');
target = [3, 4];
gridSize = 5;
guessHistory = getUserGuessV2(gridSize, target);
fprintf('Returned guessHistory: ');
disp(guessHistory);