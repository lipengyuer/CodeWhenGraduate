function function1=fun1tt(T,shuru)
%function1=T*shuru;

function1=(exp(shuru(1,:)/T(1))/(T(1)-T(2))-exp(shuru(1,:)/T(2))/(T(1)-T(2)))*T(3).*shuru(2,:);
%T=[rand rand rand];
%model1=lsqnonlin(fun,T,t,x);
%model1=fun;
end
