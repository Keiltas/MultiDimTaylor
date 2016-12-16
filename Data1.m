nUnderlyings = 3;

SpotPrice = [
100.00
50.00
200.00]';

dS = ([128.200000000 48.517500000 191.550000000] - SpotPrice);  

rfRate = [
0.02996934116
0.01000000000
0.00667330648]';

%rfRate = rfRate * 100;

refVolatility = [9, 18, 10];
%RefVolatility = RefVolatility * 100;


volatilityTTM = [10.0 / 365 10.0 / 365 10.0 / 365];   %%% in 5 or not

ForwardPrice = zeros(1, nUnderlyings);
NewForwardPrice = zeros(1, nUnderlyings);

for i = 1:nUnderlyings 
    ForwardPrice(i) = SpotToForwardPrice(SpotPrice(i), rfRate(i), 0, volatilityTTM(i));
    NewForwardPrice(i) = SpotToForwardPrice(SpotPrice(i) + dS(i), rfRate(i), 0, volatilityTTM(i));
end

StrikePrice = 100;  %???????



