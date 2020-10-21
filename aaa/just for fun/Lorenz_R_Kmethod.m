function Lorenz_R_Kmethod(sigma,rho,beta,f0,h)
x_n(1) = f0(1);
y_n(1) = f0(2);
z_n(1) = f0(3);
for t = 1:1000
    f_weifen(t,:) = [jisuan_x_weifen(sigma,x_n(t),y_n) jisuan_y_weinfen(rho,x_n,y_n,z_n)  jisuan_z_weifen(beta,x_n,y_n,z_n)];










function x_weifen = jisuan_x_weifen(sigma,x_n,y_n)
x_weifen = sigma(y_n-x_n);
end

function y_weifen = jisuan_y_weifen(rho,x_n,y_n,z_n)
y_weifen = rho*x_n - y_n - x_n*z_n;
end

function z_weifen = jisuan_z_weifen(beta,x_n,y_n,z_n)
z_weifen = y_n*x_n - beta*z_n;
end


