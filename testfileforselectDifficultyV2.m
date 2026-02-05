% Tests/driver file for selectDifficultyV2 function to check whether
% invalid inputs reduce remaining attempts, message showed to the user and
% program ends after 3 tries. The test cases from the previous test file
% are utilised once again since it consists of invalid inputs.
 

% Test Case 1: Invalid input - number outside valid range (0). Message
% displayed to the user regarding X more attempts remaining and program
% ends after 3 tries.
fprintf('\nTEST 1: Invalid input - number outside valid range (0)\n');
fprintf('Expected: "Invalid Input" message, re-prompt, and remaining attempts shown\n');
% Calls the selectDifficultyV2 function
gridSize = selectDifficultyV2();  
% User should be re-prompted
fprintf('Returned gridSize: %d\n\n', gridSize);  


% Test Case 2: Invalid input - number outside valid range (4). Message
% displayed to the user regarding X more attempts remaining and program
% ends after 3 tries.
fprintf('\nTEST 2: Invalid input - number outside valid range (4)\n');
fprintf('Expected: "Invalid Input" message, re-prompt, and remaining attempts shown\n');
% Calls the selectDifficultyV2 function
gridSize = selectDifficultyV2();  
% User should be re-prompted
fprintf('Returned gridSize: %d\n\n', gridSize);

% Test Case 3: Invalid input - number outside valid range (2.5). Message
% displayed to the user regarding X more attempts remaining and program
% ends after 3 tries.
fprintf('\nTEST 3: Invalid input - number outside valid range (2.5)\n');
fprintf('Expected: "Invalid Input" message, re-prompt, and remaining attempts shown\n');
% Calls the selectDifficultyV2 function
gridSize = selectDifficultyV2();  
% User should be re-prompted
fprintf('Returned gridSize: %d\n\n', gridSize);