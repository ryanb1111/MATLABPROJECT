% Testdriver file for selectDifficultyV1 function to check whether
% different invalid inputs are handled

% Original Test cases to confirm whether the original code hasn't been affected

% Test Case 1: Expected gridSize = 5 for Easy mode
fprintf('\nTEST 1\n');
fprintf('Expected gridSize = 5 (Easy) (for testing purposes)\n\n');
% Calls selectDifficultyV1 function
gridSize = selectDifficultyV1();
fprintf('Returned gridSize: %d\n\n', gridSize);

% Test Case 2: Expected gridSize = 10 for medium mode
fprintf('\nTEST 2\n');
fprintf('Expected gridSize = 10 (Medium) (for testing purposes)\n\n');
% Calls selectDifficultyV1 function
gridSize = selectDifficultyV1();
fprintf('Returned gridSize: %d\n\n', gridSize);

% Test Case 3: Expected gridSize = 20 for hard mode
fprintf('\nTEST 3\n');
fprintf('Expected gridSize = 20 (Hard) (for testing purposes)\n\n');
% Calls selectDifficultyV1 function
gridSize = selectDifficultyV1();
fprintf('Returned gridSize: %d\n\n', gridSize);

% NEW: Test cases to check whether different invalid inputs can work
 
% Test Case 4: Invalid input - number outside valid range (0). To continue
% to the new test, type a valid input (Enter 1, 2 or 3).
fprintf('\nTEST 4: Invalid input - number outside valid range (0)\n');
fprintf('Expected: "Invalid Input" message and re-prompt\n\n');
% Calls selectDifficultyV1 function
gridSize = selectDifficultyV1();  
% User should be re-prompted
fprintf('Returned gridSize: %d\n\n', gridSize);  


% Test Case 5: Expect error message for number outside valid range such as
% 4. To continue to the new test, type a valid input (Enter 1, 2 or 3).
fprintf('\nTEST 5: Invalid input - number outside valid range (4)\n');
fprintf('Expected: "Invalid Input" message and re-prompt\n');
% Calls selectDifficultyV1 function
gridSize = selectDifficultyV1();  
% User should be re-prompted
fprintf('Returned gridSize: %d\n\n', gridSize);

% Test Case 6: Expect error message for number outside valid range such as
% 2.5. To continue to the next test, type a valid input (Enter 1, 2 or 3).
fprintf('\nTEST 6: Invalid input - number outside valid range (2.5)\n');
fprintf('Expected: "Invalid Input" message and re-prompt\n');
% Calls selectDifficultyV1 function
gridSize = selectDifficultyV1();  
% User should be re-prompted
fprintf('Returned gridSize: %d\n\n', gridSize);