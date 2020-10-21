function [a b c d]=ffit(x)
[a b c d]=lsqvurvefit(@ffun,T,shuru,shuchu);
end