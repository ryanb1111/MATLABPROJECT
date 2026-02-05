% Stage 2: This function generates a random target coordinate (x, y) within a grid
% of size gridSize and completes Stage 2 of the project.
function target = generateTargetV1(gridSize)

% Generate random x and y coordinates based off the grid size chosen by the
% user
x = randi([1, gridSize]);
y = randi([1, gridSize]);

% Return the target coordinates
target = [x, y];

% Display the generated target (Main purpose is for debugging)
fprintf('Generated target coordinate: (%d, %d)\n', target(1), target(2));
end

