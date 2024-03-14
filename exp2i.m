clc; close all; clear all;
%Number of dice rolls
numRolls = 10000;

% Simulate rolling two dice and calculate the sum
diceSum = randi([1, 6], numRolls, 100);
sumValues = sum(diceSum, 2);

% Calculate the probability distribution
numOutcomes = 100 * 6; % Possible outcomes for hundred dice
probDistribution = histcounts(sumValues, 2:numOutcomes+1) / numRolls;

% Plotting
bar(2:numOutcomes, probDistribution);
title('Central Limit Theorem: N=100 Dice');
xlabel('Possibel Outcomes');
ylabel('Probability');