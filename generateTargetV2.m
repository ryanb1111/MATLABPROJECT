% New Change: The target coordinate is no longer visible to the user so
% they are able to guess its location. A message will be printed to inform
% them regarding this.

% This function generates a random target coordinate (x, y) within a grid
% of size gridSize and completes Stage 2 of the project.
function target = generateTargetV2(gridSize)

% Generate random x and y coordinates based off the grid size chosen by the
% user
x = randi([1, gridSize]);
y = randi([1, gridSize]);

% Return the target coordinates
target = [x, y];

% New: Inform the user that a target has been chosen but won't be revealed yet
fprintf('\nA target coordinate has been generated. Good luck in trying to guess where it is.\n');






