% Test/driver file created for selectDifficultyV3 to ensure different cases work 
% for the final program

% Test Case 1: Expected gridSize = 5 for Easy mode
fprintf('\nTEST 1\n');
fprintf('Expected gridSize = 5 (Easy) (for testing purposes)\n\n');
gridSize = selectDifficultyV3();
fprintf('Returned gridSize: %d\n\n', gridSize);

% Test Case 2: Expected gridSize = 10 for medium mode
fprintf('\nTEST 2\n');
fprintf('Expected gridSize = 10 (Medium) (for testing purposes)\n\n');
% Calls the selectDifficultyV3 function
gridSize = selectDifficultyV3();
fprintf('Returned gridSize: %d\n\n', gridSize);

% Test Case 3: Expected gridSize = 20 for hard mode
fprintf('TEST 3\n');
fprintf('Expected gridSize = 20 (Hard) (for testing purposes)\n\n');
% Calls the selectDifficultyV3 function
gridSize = selectDifficultyV3();
fprintf('Returned gridSize: %d\n\n', gridSize);

% Test and driver file for selectDifficultyV3 function to check whether
% different invalid inputs are handled. To continue to next stages, enter a
% valid input by typing 1, 2 or 3.

% Test Case 4: Invalid input - number outside valid range (0)
fprintf('\nTEST 4: Invalid input - number outside valid range (0)\n');
fprintf('Expected: "Invalid Input" message and re-prompt\n\n');
% Calls the selectDifficultyV3 function
gridSize = selectDifficultyV3();  
% User should be re-prompted
fprintf('Returned gridSize: %d\n\n', gridSize);  

% Test Case 5: Expect error message for number outside valid range such as
% 4.
fprintf('\nTEST 5: Invalid input - number outside valid range (4)\n');
fprintf('Expected: "Invalid Input" message and re-prompt\n');
% Calls the selectDifficultyV3 function
gridSize = selectDifficultyV3();  
% User should be re-prompted
fprintf('Returned gridSize: %d\n\n', gridSize);

% Test Case 6: Expect error message for number outside valid range such as
% 2.5.
fprintf('\nTEST 6: Invalid input - number outside valid range (2.5)\n');
fprintf('Expected: "Invalid Input" message and re-prompt\n');
% Calls the selectDifficultyV3 function
gridSize = selectDifficultyV3();  
% User should be re-prompted
fprintf('Returned gridSize: %d\n\n', gridSize);