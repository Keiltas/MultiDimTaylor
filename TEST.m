% addpath 'C:\Users\nikita.vasilevskiy\Documents\MATLAB\MultiDimTaylor'
% savepath

clearvars;

run('Data.m');

%test = TaylorInterpolationMultiDim(10, dS,  ForwardPrice, NewForwardPrice, 100, RefVolatility, volatilityTTM(1), 1, 'GreeksInput.m');

test1 = TaylorInterpolationMultiDim(10, dS,  ForwardPrice, NewForwardPrice, 100, RefVolatility, volatilityTTM(1), 1, 'GreeksInput1.m')

33.345775525 - 33.343528094;

%test1 - test;

% 33.350742679 vega = 1 1 1

test1 - 33.412511290