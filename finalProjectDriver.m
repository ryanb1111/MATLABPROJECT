% Main driver file to solely call all of the functions utilised.

% Run Stage 1: Select difficulty and get grid size
gridSize = selectDifficultyV3();

% Run Stage 2: Generate a random target coordinate based on grid size
target = generateTargetFinal(gridSize);

% Run Stages 3 to 5:
guessHistory = getUserGuessV5Main(gridSize, target);

