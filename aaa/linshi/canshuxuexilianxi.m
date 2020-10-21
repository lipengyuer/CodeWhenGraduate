f=inline('a*x','a','x');
x=[1:100];
y=[2:2:200];
daijia=inline('sum((shijizhi-y).^2)','shijizhi','y');
A=rand;
while daijia(f(A,x),y)>1
    if(f(A,1)>2)
        A=A-0.001;
    else A=A+0.001;
    end
   
end
dai=daijia(f(A,x),y);
