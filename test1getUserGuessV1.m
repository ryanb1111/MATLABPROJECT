% Use of test files created for getUserGuessV1 to ensure different cases work 
% for the current program.

% Test Case 1: Correct guess on the first attempt
fprintf('\nTEST 1\n');
fprintf('Expected outcome: Correct guess on the first attempt.\n');
target1 = [3, 2]; 
input1 = [3, 2]; % Correct guess
fprintf('Target: (%d, %d)\n', target1(1), target1(2));
guessHistory1 = getUserGuessV1(target1);
fprintf('Returned guess history: ');
disp(guessHistory1);

% Test Case 2: Incorrect guess for all attempts
fprintf('\nTEST 2\n');
fprintf('Expected outcome: The game should reveal the target coordinate at the end after all incorrect guesses.\n');
target2 = [1, 1]; % Target coordinate
fprintf('Target: (%d, %d)\n', target2(1), target2(2));
guessHistory2 = getUserGuessV1(target2);
fprintf('Returned guess history: ');
disp(guessHistory2);

% Test Case 3: Guessing the target correctly within 3 attempts
fprintf('\nTEST 3\n');
fprintf('Expected outcome: The game should reveal the correct coordinate in 3rd attempt.\n');
target3 = [2, 3]; % Target coordinate
fprintf('Target: (%d, %d)\n', target3(1), target3(2));
guessHistory3 = getUserGuessV1(target3);
fprintf('Returned guess history: ');
disp(guessHistory3);

% Test Case 4: Invalid input (non-integer)
fprintf('\nTEST 4: Invalid input - non-integer value\n');
fprintf('Expected outcome: Handle non-integer input properly (e.g., prompt again).\n');
target4 = [4, 4]; % Target coordinate
fprintf('Target: (%d, %d)\n', target4(1), target4(2));
guessHistory4 = getUserGuessV1(target4);
fprintf('Returned guess history: ');
disp(guessHistory4);
