classdef SecOrdGreeks
   properties
      delta;
      gamma;
      rho;
      vega; 
      vegaBasket;
      vomma;
      theta; %????????????????
      charm;
      charmBasket;
      vanna;
      
      gammaCross;
      vommaCross;
      vannaCross;
      
   end
   methods
      function obj = MyClass(InitFile)
         if nargin > 0
            data = load(InitFile);
            obj.delta = data.delta;
            obj.gamma = data.gamma;
            obj.rho = data.rho;
            obj.vega = data.vega;
            obj.vegaBasket = data.vegaBasket;
            obj.vomma = data.vomma;
            obj.theta = data.theta;
            obj.charm = data.charm;
            obj.charmBasket = data.charmBasket;
            obj.vanna = data.vanna;
            obj.gammaCross = data.gammaCross;
            obj.vommaCross = data.vommaCross;
            obj.vannaCross = data.Cross;
         end
      end
   end
end



