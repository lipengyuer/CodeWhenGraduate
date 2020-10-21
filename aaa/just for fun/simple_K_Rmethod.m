function simple_K_Rmethod
y0 = 0:10;
h = 0.1;
for m = 1:10
y(1) = y0(m);
for x = 2:1000
k1 = qiudaoshu(x);
k2 = qiudaoshu(x+0.5*h);
k3 = qiudaoshu(x+0.5*h);
k4 = qiudaoshu(x+h);
y(x) = y(x-1) + (h/6)*(k1+2*k2+3*k3+k4);
end
t = 1:1000;
yy = t.*t+t+1;
hold on,plot(y,'g-');hold on,plot(yy,'m-');
end
end

function daoshu = qiudaoshu(x)
daoshu = 2*x+1;
end