%Number of coin Tosses
numToss = 10000;

% Simulate tossing 2 coins and calculate the sum
CoinSum = randi([1, 2], numToss, 100);
sumValues = sum(CoinSum, 2);

% Calculate the probability distribution
numOutcomes = 100 * 2; % Possible outcomes for hundred coins
probDistribution = histcounts(sumValues, 2:numOutcomes+1) / numToss;

% Plotting
bar(2:numOutcomes, probDistribution);
title('Central Limit Theorem: N=100 coins');
xlabel('Possibel Outcomes');
ylabel('Probability');
