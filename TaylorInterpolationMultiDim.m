function OptionPrice = TaylorInterpolationMultiDim(oldPrice, dS,  ForwardPrice, NewForwardPrice, StrikePrice, RefVolatility, Time, BreakpointScaleFactor, Greeks) %GreeksInput!!

    %nUnderlyings = size(ForwardPrice, 2);
    run(Greeks);
    % This column vector is responsible for keeping changes of volatility of i-th
    % underlying (that appear due to changes of spot price)
    
    %dSigma = zeros(nUnderlyings, 1);     

    dSigma = ([ 
0.09055837251
0.18607859691
0.10057761616
] - (RefVolatility / 100)');
    
       
    
%     diff1 = dSigma(1)* vomma(1, 2) * dSigma(2)
% 
% diff2 = 33.343939200 - 33.343528094
% 
% abs(diff1 - diff2)
    Vega * dSigma
%     dSigma' * triu(vomma, 1) * dSigma
%     0.5 * (dSigma'.* diag(vomma)') * dSigma         
    
    OptionPrice = oldPrice + Delta * dS' + dS * triu(Gamma, 1) * dS' + 0.5 * (dS.* diag(Gamma)') * dS' +...
        dSigma' * triu(vomma, 1) * dSigma + 0.5 * (dSigma'.* diag(vomma)') * dSigma + Vega * dSigma + dS * vanna * dSigma;
    
    
end



%     gamma = zeros(nUnderlyings, nUnderlyings);
%     for k = 1:nUnderlyings
%         gamma(k, k) = gre.gamma(k);
%         for j = (k + 1):nUnderlyings
%             gamma(k, j) =  gre.crossGamma(k, j);
%             gamma(j, k) = gamma(k, j);
%         end
%     end 
%     
%     vomma = zeros(nUnderlyings, nUnderlyings);
%     for k = 1:nUnderlyings
%         vomma(k, k) = gre.vomma(k);
%         for j = (k + 1):nUnderlyings
%             vomma(k, j) =  gre.vomma(k, j);
%             vomma(j, k) = vomma(k, j);
%         end
%     end 
%     
%     vanna = zeros(nUnderlyings, nUnderlyings);