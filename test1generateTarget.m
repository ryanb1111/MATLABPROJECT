% Test and driver file for generateTargetV1 function

% Test Case 1: gridSize = 5
fprintf('\nTEST 1\n');
fprintf('gridSize = 5. Expect x and y between 1 and 5\n\n');
target = generateTargetV1(5);
fprintf('Returned target: (%d, %d)\n\n', target(1), target(2));

% Test Case 2: gridSize = 10
fprintf('TEST 2\n');
fprintf('gridSize = 10. Expect x and y between 1 and 10\n\n');
target = generateTargetV1(10);
fprintf('Returned target: (%d, %d)\n\n', target(1), target(2));

% Test Case 3: gridSize = 20
fprintf('TEST 3\n');
fprintf('gridSize = 20. Expect x and y between 1 and 20\n\n');
target = generateTargetV1(20);
fprintf('Returned target: (%d, %d)\n\n', target(1), target(2));
 
% Test Cases 4 and 5 are to confirm whether the program is able to handle
% edge cases

% Test Case 4: gridSize = 1 (minimum grid size)
fprintf('TEST 4\n');
fprintf('gridSize = 1. Expect x and y to be 1\n\n');
target = generateTargetV1(1);
fprintf('Returned target: (%d, %d)\n\n', target(1), target(2));

% Test Case 5: gridSize = 100 (large grid size)
fprintf('TEST 5\n');
fprintf('gridSize = 100. Expect x and y between 1 and 100\n\n');
target = generateTargetV1(100);
fprintf('Returned target: (%d, %d)\n\n', target(1), target(2));


