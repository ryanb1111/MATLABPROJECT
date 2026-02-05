% Test/driver file for selectDifficultyV0 function

% Test Case 1: Expected gridSize = 5 for Easy mode
fprintf('\nTEST 1\n');
fprintf('Expected gridSize = 5 (Easy) (for testing purposes)\n\n');
% Calls the function
gridSize = selectDifficultyV0();
fprintf('Returned gridSize: %d\n\n', gridSize);

% Test Case 2: Expected gridSize = 10 for medium mode
fprintf('\nTEST 2\n');
fprintf('Expected gridSize = 10 (Medium) (for testing purposes)\n\n');
% Calls the function
gridSize = selectDifficultyV0();
fprintf('Returned gridSize: %d\n\n', gridSize);

% Test Case 3: Expected gridSize = 20 for hard mode
fprintf('TEST 3\n');
fprintf('Expected gridSize = 20 (Hard) (for testing purposes)\n\n');
% Calls the function
gridSize = selectDifficultyV0();
fprintf('Returned gridSize: %d\n\n', gridSize);
