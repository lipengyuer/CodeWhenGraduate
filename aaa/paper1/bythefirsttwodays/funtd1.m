function function1=funtd1(T,shuru)
%function1=T*shuru;
function1=(exp(-(shuru-T(3))/T(1))/(T(1)-T(2))-exp(-(shuru-T(3))/T(2))/(T(1)-T(2)));
%T=[rand rand rand];
%model1=lsqnonlin(fun,T,t,x);
%model1=fun;
end
