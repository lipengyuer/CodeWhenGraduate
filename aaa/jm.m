function jianmo=jm(t,x)
fun1=inline('a1(1)*exp(a1(2)*x)+a1(3)*exp(a1(4)*x)','a1','x');
[a1 r1 j1]=lsqcurvefit(fun1,[100 0.01 100 0.01],t,x);

fun3=inline('a3(1)*exp(a3(2)*x)+a3(3)*exp(a3(4)*x)+a3(3)*exp(a3(4)*x)','a3','x');
[a3 r3 j3]=lsqcurvefit(fun3,[41.0200989917774,0.00838169675111930,-20.5100495479547,0.00838169675073366,100,0.0100000000000000],t,x);

fun2=inline('a2(1)*x.*exp(a2(2)*x)+a2(3)','a2','x');
[a2 r2 j2]=lsqcurvefit(fun2,[100 0.01 1],t,x);
jianmo=[a1 a3];
end