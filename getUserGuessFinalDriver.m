% Driver script to run Stages 1 and Stage 2 together

% Run Stage 1: Select difficulty and get grid size
gridSize = selectDifficultyFinal();

% Run Stage 2: Generate a random target coordinate based on grid size
target = generateTargetFinal(gridSize);

% Run Stages 3 to 5:
guessHistory = getUserGuessFinal(gridSize, target);
