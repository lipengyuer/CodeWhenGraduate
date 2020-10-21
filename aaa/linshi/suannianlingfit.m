T0=[10*rand rand 100*rand 10*rand rand rand rand];
[T RN RI EF]=lsqcurvefit(@suannianling,T0,x,y);
for m=1:3
    n=m;
end